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

`include "fssd_axi.svh"

module _burst_controller #(
    parameter ID_WIDTH          = 2,
    parameter ADDR_WIDTH        = 32,
    parameter DATA_WIDTH        = 512,
    parameter STRB_WIDTH        = DATA_WIDTH/8, 
    parameter USER_WIDTH        = 4
)(   

    // Reset and Clock signals
    input   logic                   clk_i,
    input   logic                   rst_ni, // active low reset

    // Interface with FTL Controller (TODO: replace with Mem interface)
    output  logic [ADDR_WIDTH-1:0]  mem_address,
    output  logic                   addr_valid,
    output  logic                   mem_rw,     // 0 for read, 1 for write
    input   logic [ADDR_WIDTH-1:0]  mem_new_address,
    input   logic                   addr_resp,
    input   logic                   cache_hit,

    // AXI-Slave Interface to the NVMe Target Controller
    `DEFINE_AXI_SLAVE_PORTS(s, DATA_WIDTH),
    // AXI-Master interface to the flash subsystem
    `DEFINE_AXI_MASTER_PORTS(m, DATA_WIDTH)

);

// Parameters section
localparam int READ     = 0;
localparam int WRITE    = 1;

// Type Declaration
typedef enum logic [3:0] {
    halt, rrequest, wrequest, rwait, wwait, rsend, wsend, rresp, wresp
} fsm_state_e; 

// Signals Declaration
logic [ADDR_WIDTH-1:0]  new_addr_buf;
logic                   ld_addr;
logic                   user_buf;
logic                   mode;

fsm_state_e             state;
fsm_state_e             next_state;

// Assignments
assign mem_rw = mode;

// W Channel
assign m_axi_wid      = s_axi_wid;
assign m_axi_wdata    = s_axi_wdata;
assign m_axi_wstrb    = s_axi_wstrb;
assign m_axi_wlast    = s_axi_wlast;
assign m_axi_wvalid   = s_axi_wvalid;
assign s_axi_wready   = m_axi_wready;

// R Channel
assign s_axi_rid      = m_axi_rid;
assign s_axi_rdata    = m_axi_rdata;
assign s_axi_rresp    = m_axi_rresp;
assign s_axi_rlast    = m_axi_rlast;
assign s_axi_rvalid   = m_axi_rvalid;
assign m_axi_rready   = s_axi_rready;

// B Channel
assign s_axi_bid      = m_axi_bid;
assign s_axi_bresp    = m_axi_bresp;
assign s_axi_bvalid   = m_axi_bvalid;
assign m_axi_bready   = s_axi_bready;

// AW Channel
assign m_axi_awid     = s_axi_awid;
assign m_axi_awsize   = s_axi_awsize;
assign m_axi_awlen    = s_axi_awlen;
assign m_axi_awburst  = s_axi_awburst;
assign m_axi_awcache  = s_axi_awcache;//'1;
assign m_axi_awprot   = s_axi_awprot;
assign m_axi_awlock   = s_axi_awlock;
assign m_axi_awqos    = s_axi_awqos;
assign m_axi_awregion = s_axi_awregion;

//AR Channel
assign m_axi_arid     = s_axi_arid;
assign m_axi_arsize   = s_axi_arsize;
assign m_axi_arlen    = s_axi_arlen;
assign m_axi_arburst  = s_axi_arburst;
assign m_axi_arcache  = s_axi_arcache;
assign m_axi_arqos    = s_axi_arqos;
assign m_axi_arprot   = s_axi_arprot;
assign m_axi_arlock   = s_axi_arlock;
assign m_axi_arregion = s_axi_arregion;

//////////////////////////
// Registering Inputs   //
//////////////////////////

always_ff @(posedge clk_i) begin
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

always_ff @(posedge clk_i) begin
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
            if (m_axi_arready) begin
                next_state = rresp;
            end
        end
        
        wsend: begin
            if (m_axi_awready) begin
                next_state = wresp;
            end
        end
        
        rresp, wresp: begin
            next_state = halt;
        end
        
        default:;
    endcase
    
    // Drive signals depending on the current state
    m_axi_arvalid = '0;
    m_axi_araddr  = '0;
    m_axi_awvalid = '0;
    m_axi_awaddr  = '0;
    m_axi_aruser  = '0;
    m_axi_awuser  = '0;
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
            m_axi_arvalid = 1;
            m_axi_araddr = new_addr_buf;
            m_axi_aruser = {{(USER_WIDTH-1){1'b0}}, user_buf};
        end
        
        wsend: begin
            m_axi_awvalid = 1;
            m_axi_awaddr = new_addr_buf;
            m_axi_awuser = {{(USER_WIDTH-1){1'b0}}, user_buf};
        end
        
        rresp: begin
            s_axi_arready = 1;
        end
        
        wresp: begin
            s_axi_awready = 1;
        end
        
        default:;
    endcase
end

endmodule
