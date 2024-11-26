// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Nov 26 11:49:54 2024
// Host        : stefano-Victus-by-HP-Laptop-16-e0xxx running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/stefano/Desktop/Work/Projects/FSSD/ips/custom/burst_controller/build/burst_controller_prj.gen/sources_1/ip/burst_controller/burst_controller_sim_netlist.v
// Design      : burst_controller
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "burst_controller,_burst_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "_burst_controller,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module burst_controller
   (clk_i,
    rst_ni,
    mem_address,
    addr_valid,
    mem_rw,
    mem_new_address,
    addr_resp,
    cache_hit,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_arid,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_arid,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input clk_i;
  input rst_ni;
  output [31:0]mem_address;
  output addr_valid;
  output mem_rw;
  input [31:0]mem_new_address;
  input addr_resp;
  input cache_hit;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWID" *) input [1:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLOCK" *) input s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWUSER" *) input [3:0]s_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WID" *) input [1:0]s_axi_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [511:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [63:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BID" *) output [1:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLOCK" *) input s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARID" *) input [1:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARUSER" *) input [3:0]s_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RID" *) output [1:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [511:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWID" *) output [1:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLOCK" *) output m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWUSER" *) output [3:0]m_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WID" *) output [1:0]m_axi_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [511:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [63:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BID" *) input [1:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *) output m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARID" *) output [1:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREGION" *) output [3:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARUSER" *) output [3:0]m_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RID" *) input [1:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [511:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire addr_resp;
  wire addr_valid;
  wire cache_hit;
  wire clk_i;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire [0:0]\^m_axi_aruser ;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire m_axi_awready;
  wire [0:0]\^m_axi_awuser ;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [511:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [31:0]mem_address;
  wire [31:0]mem_new_address;
  wire mem_rw;
  wire rst_ni;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [511:0]s_axi_wdata;
  wire [1:0]s_axi_wid;
  wire s_axi_wlast;
  wire [63:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[1:0] = s_axi_arid;
  assign m_axi_arlen[7:0] = s_axi_arlen;
  assign m_axi_arlock = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3:0] = s_axi_arregion;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[3] = \<const0> ;
  assign m_axi_aruser[2] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \^m_axi_aruser [0];
  assign m_axi_awburst[1:0] = s_axi_awburst;
  assign m_axi_awcache[3:0] = s_axi_awcache;
  assign m_axi_awid[1:0] = s_axi_awid;
  assign m_axi_awlen[7:0] = s_axi_awlen;
  assign m_axi_awlock = s_axi_awlock;
  assign m_axi_awprot[2:0] = s_axi_awprot;
  assign m_axi_awqos[3:0] = s_axi_awqos;
  assign m_axi_awregion[3:0] = s_axi_awregion;
  assign m_axi_awsize[2:0] = s_axi_awsize;
  assign m_axi_awuser[3] = \<const0> ;
  assign m_axi_awuser[2] = \<const0> ;
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \^m_axi_awuser [0];
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[511:0] = s_axi_wdata;
  assign m_axi_wid[1:0] = s_axi_wid;
  assign m_axi_wlast = s_axi_wlast;
  assign m_axi_wstrb[63:0] = s_axi_wstrb;
  assign m_axi_wvalid = s_axi_wvalid;
  assign s_axi_bid[1:0] = m_axi_bid;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[511:0] = m_axi_rdata;
  assign s_axi_rid[1:0] = m_axi_rid;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_rvalid = m_axi_rvalid;
  assign s_axi_wready = m_axi_wready;
  GND GND
       (.G(\<const0> ));
  burst_controller__burst_controller inst
       (.addr_resp(addr_resp),
        .addr_valid(addr_valid),
        .cache_hit(cache_hit),
        .clk_i(clk_i),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .m_axi_aruser(\^m_axi_aruser ),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awready(m_axi_awready),
        .m_axi_awuser(\^m_axi_awuser ),
        .m_axi_awvalid(m_axi_awvalid),
        .mem_address(mem_address),
        .mem_new_address(mem_new_address),
        .mem_rw(mem_rw),
        .rst_ni(rst_ni),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "_burst_controller" *) 
module burst_controller__burst_controller
   (s_axi_awready,
    m_axi_awvalid,
    mem_rw,
    s_axi_arready,
    m_axi_arvalid,
    m_axi_aruser,
    m_axi_awuser,
    addr_valid,
    m_axi_araddr,
    m_axi_awaddr,
    mem_address,
    s_axi_arvalid,
    clk_i,
    cache_hit,
    mem_new_address,
    addr_resp,
    m_axi_arready,
    m_axi_awready,
    s_axi_awvalid,
    s_axi_araddr,
    s_axi_awaddr,
    rst_ni);
  output s_axi_awready;
  output [0:0]m_axi_awvalid;
  output mem_rw;
  output s_axi_arready;
  output [0:0]m_axi_arvalid;
  output [0:0]m_axi_aruser;
  output [0:0]m_axi_awuser;
  output addr_valid;
  output [31:0]m_axi_araddr;
  output [31:0]m_axi_awaddr;
  output [31:0]mem_address;
  input s_axi_arvalid;
  input clk_i;
  input cache_hit;
  input [31:0]mem_new_address;
  input addr_resp;
  input m_axi_arready;
  input m_axi_awready;
  input s_axi_awvalid;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;
  input rst_ni;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_4_n_0 ;
  wire \FSM_onehot_state[5]_i_5_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire addr_resp;
  wire addr_valid;
  wire cache_hit;
  wire clk_i;
  wire ld_addr;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire [0:0]m_axi_aruser;
  wire [0:0]m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire m_axi_awready;
  wire [0:0]m_axi_awuser;
  wire [0:0]m_axi_awvalid;
  wire [31:0]mem_address;
  wire [31:0]mem_new_address;
  wire mem_rw;
  wire [31:0]new_addr_buf;
  wire rst_ni;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire user_buf;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arready),
        .I1(s_axi_awready),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(rst_ni),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFE)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(s_axi_arready),
        .I1(\FSM_onehot_state[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state[5]_i_5_n_0 ),
        .I3(addr_resp),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(ld_addr),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFC0FFEAFFC0)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(s_axi_arvalid),
        .I1(m_axi_awready),
        .I2(m_axi_awvalid),
        .I3(s_axi_awready),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(s_axi_awvalid),
        .O(\FSM_onehot_state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[5]_i_5 
       (.I0(m_axi_arvalid),
        .I1(m_axi_arready),
        .I2(addr_resp),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[5]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_i),
        .CE(\FSM_onehot_state[5]_i_2_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_i),
        .CE(\FSM_onehot_state[5]_i_2_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_i),
        .CE(\FSM_onehot_state[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_i),
        .CE(\FSM_onehot_state[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(m_axi_arvalid),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_i),
        .CE(\FSM_onehot_state[5]_i_2_n_0 ),
        .D(m_axi_arvalid),
        .Q(s_axi_arready),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_i),
        .CE(\FSM_onehot_state[5]_i_2_n_0 ),
        .D(\FSM_onehot_state[5]_i_3_n_0 ),
        .Q(mem_rw),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk_i),
        .CE(\FSM_onehot_state[5]_i_2_n_0 ),
        .D(mem_rw),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk_i),
        .CE(\FSM_onehot_state[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(m_axi_awvalid),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk_i),
        .CE(\FSM_onehot_state[5]_i_2_n_0 ),
        .D(m_axi_awvalid),
        .Q(s_axi_awready),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    addr_valid_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(mem_rw),
        .O(addr_valid));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[0]),
        .O(m_axi_araddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[10]),
        .O(m_axi_araddr[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[11]),
        .O(m_axi_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[12]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[12]),
        .O(m_axi_araddr[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[13]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[13]),
        .O(m_axi_araddr[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[14]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[14]),
        .O(m_axi_araddr[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[15]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[15]),
        .O(m_axi_araddr[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[16]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[16]),
        .O(m_axi_araddr[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[17]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[17]),
        .O(m_axi_araddr[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[18]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[18]),
        .O(m_axi_araddr[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[19]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[19]),
        .O(m_axi_araddr[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[1]),
        .O(m_axi_araddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[20]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[20]),
        .O(m_axi_araddr[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[21]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[21]),
        .O(m_axi_araddr[21]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[22]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[22]),
        .O(m_axi_araddr[22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[23]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[23]),
        .O(m_axi_araddr[23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[24]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[24]),
        .O(m_axi_araddr[24]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[25]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[25]),
        .O(m_axi_araddr[25]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[26]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[26]),
        .O(m_axi_araddr[26]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[27]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[27]),
        .O(m_axi_araddr[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[28]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[28]),
        .O(m_axi_araddr[28]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[29]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[29]),
        .O(m_axi_araddr[29]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[2]),
        .O(m_axi_araddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[30]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[30]),
        .O(m_axi_araddr[30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[31]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[31]),
        .O(m_axi_araddr[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[3]),
        .O(m_axi_araddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[4]),
        .O(m_axi_araddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[5]),
        .O(m_axi_araddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[6]),
        .O(m_axi_araddr[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[7]),
        .O(m_axi_araddr[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[8]),
        .O(m_axi_araddr[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(new_addr_buf[9]),
        .O(m_axi_araddr[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_aruser[0]_INST_0 
       (.I0(m_axi_arvalid),
        .I1(user_buf),
        .O(m_axi_aruser));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[0]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[0]),
        .O(m_axi_awaddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[10]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[10]),
        .O(m_axi_awaddr[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[11]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[11]),
        .O(m_axi_awaddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[12]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[12]),
        .O(m_axi_awaddr[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[13]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[13]),
        .O(m_axi_awaddr[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[14]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[14]),
        .O(m_axi_awaddr[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[15]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[15]),
        .O(m_axi_awaddr[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[16]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[16]),
        .O(m_axi_awaddr[16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[17]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[17]),
        .O(m_axi_awaddr[17]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[18]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[18]),
        .O(m_axi_awaddr[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[19]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[19]),
        .O(m_axi_awaddr[19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[1]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[1]),
        .O(m_axi_awaddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[20]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[20]),
        .O(m_axi_awaddr[20]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[21]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[21]),
        .O(m_axi_awaddr[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[22]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[22]),
        .O(m_axi_awaddr[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[23]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[23]),
        .O(m_axi_awaddr[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[24]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[24]),
        .O(m_axi_awaddr[24]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[25]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[25]),
        .O(m_axi_awaddr[25]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[26]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[26]),
        .O(m_axi_awaddr[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[27]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[27]),
        .O(m_axi_awaddr[27]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[28]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[28]),
        .O(m_axi_awaddr[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[29]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[29]),
        .O(m_axi_awaddr[29]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[2]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[2]),
        .O(m_axi_awaddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[30]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[30]),
        .O(m_axi_awaddr[30]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[31]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[31]),
        .O(m_axi_awaddr[31]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[3]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[3]),
        .O(m_axi_awaddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[4]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[4]),
        .O(m_axi_awaddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[5]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[5]),
        .O(m_axi_awaddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[6]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[6]),
        .O(m_axi_awaddr[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[7]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[7]),
        .O(m_axi_awaddr[7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[8]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[8]),
        .O(m_axi_awaddr[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awaddr[9]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(new_addr_buf[9]),
        .O(m_axi_awaddr[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awuser[0]_INST_0 
       (.I0(m_axi_awvalid),
        .I1(user_buf),
        .O(m_axi_awuser));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[0]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[0]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[0]),
        .O(mem_address[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[10]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[10]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[10]),
        .O(mem_address[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[11]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[11]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[11]),
        .O(mem_address[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[12]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[12]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[12]),
        .O(mem_address[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[13]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[13]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[13]),
        .O(mem_address[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[14]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[14]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[14]),
        .O(mem_address[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[15]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[15]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[15]),
        .O(mem_address[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[16]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[16]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[16]),
        .O(mem_address[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[17]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[17]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[17]),
        .O(mem_address[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[18]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[18]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[18]),
        .O(mem_address[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[19]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[19]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[19]),
        .O(mem_address[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[1]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[1]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[1]),
        .O(mem_address[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[20]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[20]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[20]),
        .O(mem_address[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[21]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[21]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[21]),
        .O(mem_address[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[22]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[22]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[22]),
        .O(mem_address[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[23]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[23]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[23]),
        .O(mem_address[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[24]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[24]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[24]),
        .O(mem_address[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[25]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[25]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[25]),
        .O(mem_address[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[26]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[26]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[26]),
        .O(mem_address[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[27]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[27]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[27]),
        .O(mem_address[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[28]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[28]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[28]),
        .O(mem_address[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[29]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[29]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[29]),
        .O(mem_address[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[2]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[2]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[2]),
        .O(mem_address[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[30]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[30]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[30]),
        .O(mem_address[30]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[31]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[31]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[31]),
        .O(mem_address[31]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[3]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[3]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[3]),
        .O(mem_address[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[4]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[4]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[4]),
        .O(mem_address[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[5]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[5]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[5]),
        .O(mem_address[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[6]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[6]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[6]),
        .O(mem_address[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[7]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[7]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[7]),
        .O(mem_address[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[8]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[8]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[8]),
        .O(mem_address[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address[9]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axi_araddr[9]),
        .I2(mem_rw),
        .I3(s_axi_awaddr[9]),
        .O(mem_address[9]));
  FDRE \new_addr_buf_reg[0] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[0]),
        .Q(new_addr_buf[0]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[10] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[10]),
        .Q(new_addr_buf[10]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[11] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[11]),
        .Q(new_addr_buf[11]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[12] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[12]),
        .Q(new_addr_buf[12]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[13] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[13]),
        .Q(new_addr_buf[13]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[14] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[14]),
        .Q(new_addr_buf[14]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[15] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[15]),
        .Q(new_addr_buf[15]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[16] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[16]),
        .Q(new_addr_buf[16]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[17] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[17]),
        .Q(new_addr_buf[17]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[18] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[18]),
        .Q(new_addr_buf[18]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[19] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[19]),
        .Q(new_addr_buf[19]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[1] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[1]),
        .Q(new_addr_buf[1]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[20] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[20]),
        .Q(new_addr_buf[20]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[21] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[21]),
        .Q(new_addr_buf[21]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[22] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[22]),
        .Q(new_addr_buf[22]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[23] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[23]),
        .Q(new_addr_buf[23]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[24] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[24]),
        .Q(new_addr_buf[24]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[25] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[25]),
        .Q(new_addr_buf[25]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[26] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[26]),
        .Q(new_addr_buf[26]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[27] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[27]),
        .Q(new_addr_buf[27]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[28] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[28]),
        .Q(new_addr_buf[28]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[29] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[29]),
        .Q(new_addr_buf[29]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[2] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[2]),
        .Q(new_addr_buf[2]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[30] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[30]),
        .Q(new_addr_buf[30]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[31] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[31]),
        .Q(new_addr_buf[31]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[3] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[3]),
        .Q(new_addr_buf[3]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[4] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[4]),
        .Q(new_addr_buf[4]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[5] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[5]),
        .Q(new_addr_buf[5]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[6] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[6]),
        .Q(new_addr_buf[6]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[7] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[7]),
        .Q(new_addr_buf[7]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[8] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[8]),
        .Q(new_addr_buf[8]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  FDRE \new_addr_buf_reg[9] 
       (.C(clk_i),
        .CE(ld_addr),
        .D(mem_new_address[9]),
        .Q(new_addr_buf[9]),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    user_buf_i_1
       (.I0(mem_rw),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(addr_resp),
        .O(ld_addr));
  FDRE user_buf_reg
       (.C(clk_i),
        .CE(ld_addr),
        .D(cache_hit),
        .Q(user_buf),
        .R(\FSM_onehot_state[5]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
