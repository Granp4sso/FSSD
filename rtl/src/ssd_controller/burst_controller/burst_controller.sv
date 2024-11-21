///////////////////////////////////////////////////////////////////////
//    ___             _      ___         _           _ _            //
//   | _ )_  _ _ _ __| |_   / __|___ _ _| |_ _ _ ___| | |___ _ _    //
//   | _ \ || | '_(_-<  _| | (__/ _ \ ' \  _| '_/ _ \ | / -_) '_|   //
//   |___/\_,_|_| /__/\__|  \___\___/_||_\__|_| \___/_|_\___|_|     //
//                                                                  //
//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////
// Disclaimer:                                                      //
//  This is a fork of the UIUC-ChenLab/FSSD project repository.     //
//  Our goal is to refactor the design, extend compatibility        //
//  with more boards, and support extra computational features.     //
//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Author:      UIUC-ChenLab                                                    //
// Refactor:    Stefano Mercogliano <stefano.mercogliano@unina.it>              //
//                                                                              //
// Description:                                                                 //
//  The burst controller processes NVMe TC read/write requests via an           //
//  AXI-Memory-Mapped port, forwarding virtual addresses to the pseudo cache    //        
//  and FTL. After determining cache status and physical addresses, it sends    //        
//  updated requests to the flash subsystem.                                    //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

`include "uninasoc_axi.svh"

module burst_controller #(
    parameter ID_WIDTH          = 2,
    parameter ADDR_WIDTH        = 32,
    parameter DATA_WIDTH        = 512,
    parameter STRB_WIDTH        = DATA_WIDTH/8, 
    parameter USER_WIDTH        = 4
)(   

    // Reset and Clock signals
    input   logic                   clk_i,
    input   logic                   rst_ni, // active low reset
    
    // AXI-Slave Interface to the NVMe Target Controller
    `DECLARE_BUS(s, DATA_WIDTH);
    /*input   logic [id_width-1:0]    s_awid,
    input   logic [addr_width-1:0]  s_awaddr,
    input   logic [2:0]             s_awsize,
    input   logic [7:0]             s_awlen,
    input   logic [1:0]             s_awburst,
    input   logic [3:0]             s_awcache,
    input   logic [2:0]             s_awprot,
    input   logic                   s_awvalid,
    output  logic                   s_awready,
    input   logic                   s_awlock,
    
    input   logic [id_width-1:0]    s_wid, 
    input   logic [data_width-1:0]  s_wdata,
    input   logic [strb_width-1:0]  s_wstrb,
    input   logic                   s_wlast,
    input   logic                   s_wvalid,
    output  logic                   s_wready,
    
    output  logic [id_width-1:0]    s_bid,
    output  logic [1:0]             s_bresp,
    output  logic                   s_bvalid,
    input   logic                   s_bready,
    
    input   logic [id_width-1:0]    s_arid,
    input   logic [addr_width-1:0]  s_araddr,
    input   logic [2:0]             s_arsize,
    input   logic [7:0]             s_arlen,
    input   logic [1:0]             s_arburst,
    input   logic [3:0]             s_arcache,
    input   logic [3:0]             s_arqos,
    input   logic [2:0]             s_arprot,
    input   logic                   s_arvalid,
    output  logic                   s_arready,
    input   logic                   s_arlock,

    output  logic [id_width-1:0]    s_rid,
    output  logic [data_width-1:0]  s_rdata,
    output  logic [1:0]             s_rresp,
    output  logic                   s_rlast,
    output  logic                   s_rvalid,
    input   logic                   s_rready,*/

    // Interface with FTL Controller (TODO: replace with Mem interface)
    output  logic [addr_width-1:0]  mem_address,
    output  logic                   addr_valid,
    output  logic                   mem_rw,     // 0 for read, 1 for write
    input   logic [addr_width-1:0]  mem_new_address,
    input   logic                   addr_resp,
    input   logic                   cache_hit,

    // AXI-Master interface to the flash subsystem
    `DECLARE_BUS(m_cache, DATA_WIDTH)
    /*output  logic [id_width-1:0]    m_cache_awid,
    output  logic [user_width-1:0]  m_cache_awuser,
    output  logic [addr_width-1:0]  m_cache_awaddr,
    output  logic [2:0]             m_cache_awsize,
    output  logic [7:0]             m_cache_awlen,
    output  logic [1:0]             m_cache_awburst,
    output  logic [3:0]             m_cache_awcache,
    output  logic [2:0]             m_cache_awprot,
    output  logic                   m_cache_awvalid,
    input   logic                   m_cache_awready,
    output  logic                   m_cache_awlock,
    
    output  logic [id_width-1:0]    m_cache_wid,
    output  logic [data_width-1:0]  m_cache_wdata,
    output  logic [strb_width-1:0]  m_cache_wstrb,
    output  logic                   m_cache_wlast,
    output  logic                   m_cache_wvalid,
    input   logic                   m_cache_wready,
    
    input   logic [id_width-1:0]    m_cache_bid,
    input   logic [1:0]             m_cache_bresp,
    input   logic                   m_cache_bvalid,
    output  logic                   m_cache_bready,
    
    output  logic [id_width-1:0]    m_cache_arid,
    output  logic [user_width-1:0]  m_cache_aruser,
    output  logic [addr_width-1:0]  m_cache_araddr,
    output  logic [2:0]             m_cache_arsize,
    output  logic [7:0]             m_cache_arlen,
    output  logic [1:0]             m_cache_arburst,
    output  logic [3:0]             m_cache_arcache,
    output  logic [3:0]             m_cache_arqos,
    output  logic [2:0]             m_cache_arprot,
    output  logic                   m_cache_arvalid,
    input   logic                   m_cache_arready,
    output  logic                   m_cache_arlock,

    input   logic [id_width-1:0]    m_cache_rid,
    input   logic [data_width-1:0]  m_cache_rdata,
    input   logic [1:0]             m_cache_rresp,
    input   logic                   m_cache_rlast,
    input   logic                   m_cache_rvalid,
    output  logic                   m_cache_rready,*/
);

// Parameters section
localparam int READ     = 0;
localparam int WRITE    = 1;

// Type Declaration
enum logic [3:0] {
    halt, rrequest, wrequest, rwait, wwait, rsend, wsend, rresp, wresp
} fsm_state; 

// Signals Declaration
logic [ADDR_WIDTH-1:0]  new_addr_buf;
logic                   ld_addr;
logic                   user_buf;
logic                   mode;

fsm_state               state;
fsm_state               next_state;

// Assignments
assign mem_rw = mode;

// W
assign m_cache_axi_wid      = s_axi_wid;
assign m_cache_axi_wdata    = s_axi_wdata;
assign m_cache_axi_wstrb    = s_axi_wstrb;
assign m_cache_axi_wlast    = s_axi_wlast;
assign m_cache_axi_wvalid   = s_axi_wvalid;
assign s_axi_wready         = m_cache_axi_wready;

// R
assign s_axi_rid            = m_cache_axi_rid;
assign s_axi_rdata          = m_cache_axi_rdata;
assign s_axi_rresp          = m_cache_axi_rresp;
assign s_axi_rlast          = m_cache_axi_rlast;
assign s_axi_rvalid         = m_cache_axi_rvalid;
assign m_cache_axi_rready   = s_axi_rready;

// B
assign s_axi_bid            = m_cache_axi_bid;
assign s_axi_bresp          = m_cache_axi_bresp;
assign s_axi_bvalid         = m_cache_axi_bvalid;
assign m_cache_axi_bready   = s_axi_bready;

// AW
assign m_cache_axi_awid     = s_axi_awid;
assign m_cache_axi_awsize   = s_axi_awsize;
assign m_cache_axi_awlen    = s_axi_awlen;
assign m_cache_axi_awburst  = s_axi_awburst;
assign m_cache_axi_awcache  = '1;
assign m_cache_axi_awprot   = s_axi_awprot;
assign m_cache_axi_awlock   = s_axi_awlock;

//AR
assign m_cache_axi_arid     = s_axi_arid;
assign m_cache_axi_arsize   = s_axi_arsize;
assign m_cache_axi_arlen    = s_axi_arlen;
assign m_cache_axi_arburst  = s_axi_arburst;
assign m_cache_axi_arcache  = s_axi_arcache;
assign m_cache_axi_arqos    = s_axi_arqos;
assign m_cache_axi_arprot   = s_axi_arprot;
assign m_cache_axi_arlock   = s_axi_arlock;


//`ASSIGN_BUS(m_cache, s);

//////////////////////////
// Registering Inputs   //
//////////////////////////

always_ff @(posedge clk) begin
    if (!rst_ni) begin
        new_addr_buf    <= '0;
        user_buf        <= '0;
    end
    else if (ld_addr) begin
        new_addr_buf    <= mem_new_address;
        user_buf        <= cache_hit;
    end
end

//////////////////////////
// FSM - Communication  //
//////////////////////////

// Input requests coming from the NVMe TC are forwarded towards
// the ftl_controller to translate logical to physical page addresses.
// READ or WRITE operations are sent towards the flash_subsystem

always_ff @(posedge clk) begin
    if (!rst_ni) begin
        state <= halt;
    end
    else begin
        state <= next_state;
    end
end

always_comb begin
    // Evaluate next state depending on AXI signals
    next_state = state;
    case (state)
        halt: begin
            if (s_axi_arvalid) begin
                next_state = rrequest;
            end
            else if (s_axi_awvalid) begin
                next_state = wrequest;
            end
        end
        
        rrequest: begin
            if (addr_resp) begin
                next_state = rwait;
            end
        end
        
        wrequest: begin
            if (addr_resp) begin
                next_state = wwait;
            end
        end
        
        rwait: begin
            if (~addr_resp) begin
                next_state = rsend;
            end
        end
        
        wwait: begin
            if (~addr_resp) begin
                next_state = wsend;
            end
        end
        
        rsend: begin
            if (m_cache_axi_arready) begin
                next_state = rresp;
            end
        end
        
        wsend: begin
            if (m_cache_axi_awready) begin
                next_state = wresp;
            end
        end
        
        rresp, wresp: begin
            next_state = halt;
        end
        
        default:;
    endcase
    
    // Drive signals depending on the current state
    m_cache_axi_arvalid = '0;
    m_cache_axi_araddr  = '0;
    m_cache_axi_awvalid = '0;
    m_cache_axi_awaddr  = '0;
    m_cache_axi_aruser  = '0;
    m_cache_axi_awuser  = '0;
    s_axi_arready       = '0;
    s_axi_awready       = '0;
    mode                = '0;
    addr_valid          = '0;
    mem_address         = '0;
    ld_addr             = '0;

    case (state)
        rrequest: begin
            mode        = READ;
            addr_valid  = 1;
            mem_address = s_axi_araddr;
            if (addr_resp) begin
                ld_addr = 1;
            end
        end
        
        wrequest: begin
            mode        = WRITE;
            addr_valid  = 1;
            mem_address = s_axi_awaddr;
            if (addr_resp) begin
                ld_addr = 1;
            end
        end
        
        rsend: begin
            m_cache_axi_arvalid = 1;
            m_cache_axi_araddr = new_addr_buf;
            m_cache_axi_aruser = {{(user_width-1){1'b0}}, user_buf};
        end
        
        wsend: begin
            m_cache_axi_awvalid = 1;
            m_cache_axi_awaddr = new_addr_buf;
            m_cache_axi_awuser = {{(user_width-1){1'b0}}, user_buf};
        end
        
        rresp: begin
            s_arready = 1;
        end
        
        wresp: begin
            s_awready = 1;
        end
        
        default:;
    endcase
end

endmodule