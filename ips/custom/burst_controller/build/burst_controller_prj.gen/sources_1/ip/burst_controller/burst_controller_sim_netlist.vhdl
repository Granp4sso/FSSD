-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Tue Nov 26 11:49:54 2024
-- Host        : stefano-Victus-by-HP-Laptop-16-e0xxx running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/stefano/Desktop/Work/Projects/FSSD/ips/custom/burst_controller/build/burst_controller_prj.gen/sources_1/ip/burst_controller/burst_controller_sim_netlist.vhdl
-- Design      : burst_controller
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu250-figd2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \burst_controller__burst_controller\ is
  port (
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rw : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_valid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    cache_hit : in STD_LOGIC;
    mem_new_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_resp : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_ni : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \burst_controller__burst_controller\ : entity is "_burst_controller";
end \burst_controller__burst_controller\;

architecture STRUCTURE of \burst_controller__burst_controller\ is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal ld_addr : STD_LOGIC;
  signal \^m_axi_arvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^mem_rw\ : STD_LOGIC;
  signal new_addr_buf : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal user_buf : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_5\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "wwait:001000000,rwait:000000100,wrequest:000100000,rrequest:000000010,halt:000000001,rresp:000010000,wresp:100000000,wsend:010000000,rsend:000001000";
  attribute SOFT_HLUTNM of addr_valid_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axi_araddr[0]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axi_araddr[10]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axi_araddr[11]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axi_araddr[12]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axi_araddr[13]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axi_araddr[14]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axi_araddr[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axi_araddr[16]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axi_araddr[17]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axi_araddr[18]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axi_araddr[19]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axi_araddr[1]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axi_araddr[20]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axi_araddr[21]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axi_araddr[22]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axi_araddr[23]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axi_araddr[24]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axi_araddr[25]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axi_araddr[26]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axi_araddr[27]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axi_araddr[28]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axi_araddr[29]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axi_araddr[2]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axi_araddr[30]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axi_araddr[31]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axi_araddr[3]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axi_araddr[4]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axi_araddr[5]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axi_araddr[6]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axi_araddr[7]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axi_araddr[8]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axi_araddr[9]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axi_aruser[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axi_awaddr[10]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axi_awaddr[11]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axi_awaddr[12]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axi_awaddr[13]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axi_awaddr[14]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axi_awaddr[15]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axi_awaddr[16]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axi_awaddr[17]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axi_awaddr[18]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axi_awaddr[19]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axi_awaddr[1]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axi_awaddr[20]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axi_awaddr[21]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axi_awaddr[22]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axi_awaddr[23]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axi_awaddr[24]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axi_awaddr[25]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axi_awaddr[26]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axi_awaddr[27]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axi_awaddr[28]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axi_awaddr[29]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axi_awaddr[2]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axi_awaddr[30]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axi_awaddr[31]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axi_awaddr[3]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axi_awaddr[4]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axi_awaddr[5]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axi_awaddr[6]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axi_awaddr[7]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axi_awaddr[8]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axi_awaddr[9]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axi_awuser[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mem_address[31]_INST_0\ : label is "soft_lutpair1";
begin
  m_axi_arvalid(0) <= \^m_axi_arvalid\(0);
  m_axi_awvalid(0) <= \^m_axi_awvalid\(0);
  mem_rw <= \^mem_rw\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => \^s_axi_awready\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_ni,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEFE"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => \FSM_onehot_state[5]_i_4_n_0\,
      I2 => \FSM_onehot_state[5]_i_5_n_0\,
      I3 => addr_resp,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => ld_addr,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFC0FFEAFFC0"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => m_axi_awready,
      I2 => \^m_axi_awvalid\(0),
      I3 => \^s_axi_awready\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => s_axi_awvalid,
      O => \FSM_onehot_state[5]_i_4_n_0\
    );
\FSM_onehot_state[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => m_axi_arready,
      I2 => addr_resp,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \FSM_onehot_state[5]_i_5_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state[5]_i_2_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state[5]_i_2_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state[5]_i_2_n_0\,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state[5]_i_2_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \^m_axi_arvalid\(0),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state[5]_i_2_n_0\,
      D => \^m_axi_arvalid\(0),
      Q => \^s_axi_arready\,
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state[5]_i_2_n_0\,
      D => \FSM_onehot_state[5]_i_3_n_0\,
      Q => \^mem_rw\,
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state[5]_i_2_n_0\,
      D => \^mem_rw\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state[5]_i_2_n_0\,
      D => \FSM_onehot_state_reg_n_0_[6]\,
      Q => \^m_axi_awvalid\(0),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state[5]_i_2_n_0\,
      D => \^m_axi_awvalid\(0),
      Q => \^s_axi_awready\,
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
addr_valid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^mem_rw\,
      O => addr_valid
    );
\m_axi_araddr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(0),
      O => m_axi_araddr(0)
    );
\m_axi_araddr[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(10),
      O => m_axi_araddr(10)
    );
\m_axi_araddr[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(11),
      O => m_axi_araddr(11)
    );
\m_axi_araddr[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(12),
      O => m_axi_araddr(12)
    );
\m_axi_araddr[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(13),
      O => m_axi_araddr(13)
    );
\m_axi_araddr[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(14),
      O => m_axi_araddr(14)
    );
\m_axi_araddr[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(15),
      O => m_axi_araddr(15)
    );
\m_axi_araddr[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(16),
      O => m_axi_araddr(16)
    );
\m_axi_araddr[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(17),
      O => m_axi_araddr(17)
    );
\m_axi_araddr[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(18),
      O => m_axi_araddr(18)
    );
\m_axi_araddr[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(19),
      O => m_axi_araddr(19)
    );
\m_axi_araddr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(1),
      O => m_axi_araddr(1)
    );
\m_axi_araddr[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(20),
      O => m_axi_araddr(20)
    );
\m_axi_araddr[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(21),
      O => m_axi_araddr(21)
    );
\m_axi_araddr[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(22),
      O => m_axi_araddr(22)
    );
\m_axi_araddr[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(23),
      O => m_axi_araddr(23)
    );
\m_axi_araddr[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(24),
      O => m_axi_araddr(24)
    );
\m_axi_araddr[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(25),
      O => m_axi_araddr(25)
    );
\m_axi_araddr[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(26),
      O => m_axi_araddr(26)
    );
\m_axi_araddr[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(27),
      O => m_axi_araddr(27)
    );
\m_axi_araddr[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(28),
      O => m_axi_araddr(28)
    );
\m_axi_araddr[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(29),
      O => m_axi_araddr(29)
    );
\m_axi_araddr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(2),
      O => m_axi_araddr(2)
    );
\m_axi_araddr[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(30),
      O => m_axi_araddr(30)
    );
\m_axi_araddr[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(31),
      O => m_axi_araddr(31)
    );
\m_axi_araddr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(3),
      O => m_axi_araddr(3)
    );
\m_axi_araddr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(4),
      O => m_axi_araddr(4)
    );
\m_axi_araddr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(5),
      O => m_axi_araddr(5)
    );
\m_axi_araddr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(6),
      O => m_axi_araddr(6)
    );
\m_axi_araddr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(7),
      O => m_axi_araddr(7)
    );
\m_axi_araddr[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(8),
      O => m_axi_araddr(8)
    );
\m_axi_araddr[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => new_addr_buf(9),
      O => m_axi_araddr(9)
    );
\m_axi_aruser[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arvalid\(0),
      I1 => user_buf,
      O => m_axi_aruser(0)
    );
\m_axi_awaddr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(0),
      O => m_axi_awaddr(0)
    );
\m_axi_awaddr[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(10),
      O => m_axi_awaddr(10)
    );
\m_axi_awaddr[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(11),
      O => m_axi_awaddr(11)
    );
\m_axi_awaddr[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(12),
      O => m_axi_awaddr(12)
    );
\m_axi_awaddr[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(13),
      O => m_axi_awaddr(13)
    );
\m_axi_awaddr[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(14),
      O => m_axi_awaddr(14)
    );
\m_axi_awaddr[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(15),
      O => m_axi_awaddr(15)
    );
\m_axi_awaddr[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(16),
      O => m_axi_awaddr(16)
    );
\m_axi_awaddr[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(17),
      O => m_axi_awaddr(17)
    );
\m_axi_awaddr[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(18),
      O => m_axi_awaddr(18)
    );
\m_axi_awaddr[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(19),
      O => m_axi_awaddr(19)
    );
\m_axi_awaddr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(1),
      O => m_axi_awaddr(1)
    );
\m_axi_awaddr[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(20),
      O => m_axi_awaddr(20)
    );
\m_axi_awaddr[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(21),
      O => m_axi_awaddr(21)
    );
\m_axi_awaddr[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(22),
      O => m_axi_awaddr(22)
    );
\m_axi_awaddr[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(23),
      O => m_axi_awaddr(23)
    );
\m_axi_awaddr[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(24),
      O => m_axi_awaddr(24)
    );
\m_axi_awaddr[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(25),
      O => m_axi_awaddr(25)
    );
\m_axi_awaddr[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(26),
      O => m_axi_awaddr(26)
    );
\m_axi_awaddr[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(27),
      O => m_axi_awaddr(27)
    );
\m_axi_awaddr[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(28),
      O => m_axi_awaddr(28)
    );
\m_axi_awaddr[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(29),
      O => m_axi_awaddr(29)
    );
\m_axi_awaddr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(2),
      O => m_axi_awaddr(2)
    );
\m_axi_awaddr[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(30),
      O => m_axi_awaddr(30)
    );
\m_axi_awaddr[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(31),
      O => m_axi_awaddr(31)
    );
\m_axi_awaddr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(3),
      O => m_axi_awaddr(3)
    );
\m_axi_awaddr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(4),
      O => m_axi_awaddr(4)
    );
\m_axi_awaddr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(5),
      O => m_axi_awaddr(5)
    );
\m_axi_awaddr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(6),
      O => m_axi_awaddr(6)
    );
\m_axi_awaddr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(7),
      O => m_axi_awaddr(7)
    );
\m_axi_awaddr[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(8),
      O => m_axi_awaddr(8)
    );
\m_axi_awaddr[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => new_addr_buf(9),
      O => m_axi_awaddr(9)
    );
\m_axi_awuser[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awvalid\(0),
      I1 => user_buf,
      O => m_axi_awuser(0)
    );
\mem_address[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(0),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(0),
      O => mem_address(0)
    );
\mem_address[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(10),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(10),
      O => mem_address(10)
    );
\mem_address[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(11),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(11),
      O => mem_address(11)
    );
\mem_address[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(12),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(12),
      O => mem_address(12)
    );
\mem_address[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(13),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(13),
      O => mem_address(13)
    );
\mem_address[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(14),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(14),
      O => mem_address(14)
    );
\mem_address[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(15),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(15),
      O => mem_address(15)
    );
\mem_address[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(16),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(16),
      O => mem_address(16)
    );
\mem_address[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(17),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(17),
      O => mem_address(17)
    );
\mem_address[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(18),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(18),
      O => mem_address(18)
    );
\mem_address[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(19),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(19),
      O => mem_address(19)
    );
\mem_address[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(1),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(1),
      O => mem_address(1)
    );
\mem_address[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(20),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(20),
      O => mem_address(20)
    );
\mem_address[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(21),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(21),
      O => mem_address(21)
    );
\mem_address[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(22),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(22),
      O => mem_address(22)
    );
\mem_address[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(23),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(23),
      O => mem_address(23)
    );
\mem_address[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(24),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(24),
      O => mem_address(24)
    );
\mem_address[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(25),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(25),
      O => mem_address(25)
    );
\mem_address[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(26),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(26),
      O => mem_address(26)
    );
\mem_address[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(27),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(27),
      O => mem_address(27)
    );
\mem_address[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(28),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(28),
      O => mem_address(28)
    );
\mem_address[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(29),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(29),
      O => mem_address(29)
    );
\mem_address[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(2),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(2),
      O => mem_address(2)
    );
\mem_address[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(30),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(30),
      O => mem_address(30)
    );
\mem_address[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(31),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(31),
      O => mem_address(31)
    );
\mem_address[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(3),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(3),
      O => mem_address(3)
    );
\mem_address[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(4),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(4),
      O => mem_address(4)
    );
\mem_address[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(5),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(5),
      O => mem_address(5)
    );
\mem_address[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(6),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(6),
      O => mem_address(6)
    );
\mem_address[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(7),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(7),
      O => mem_address(7)
    );
\mem_address[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(8),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(8),
      O => mem_address(8)
    );
\mem_address[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(9),
      I2 => \^mem_rw\,
      I3 => s_axi_awaddr(9),
      O => mem_address(9)
    );
\new_addr_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(0),
      Q => new_addr_buf(0),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(10),
      Q => new_addr_buf(10),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(11),
      Q => new_addr_buf(11),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(12),
      Q => new_addr_buf(12),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(13),
      Q => new_addr_buf(13),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(14),
      Q => new_addr_buf(14),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(15),
      Q => new_addr_buf(15),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(16),
      Q => new_addr_buf(16),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(17),
      Q => new_addr_buf(17),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(18),
      Q => new_addr_buf(18),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(19),
      Q => new_addr_buf(19),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(1),
      Q => new_addr_buf(1),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(20),
      Q => new_addr_buf(20),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(21),
      Q => new_addr_buf(21),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(22),
      Q => new_addr_buf(22),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(23),
      Q => new_addr_buf(23),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(24),
      Q => new_addr_buf(24),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(25),
      Q => new_addr_buf(25),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(26),
      Q => new_addr_buf(26),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(27),
      Q => new_addr_buf(27),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(28),
      Q => new_addr_buf(28),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(29),
      Q => new_addr_buf(29),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(2),
      Q => new_addr_buf(2),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(30),
      Q => new_addr_buf(30),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(31),
      Q => new_addr_buf(31),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(3),
      Q => new_addr_buf(3),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(4),
      Q => new_addr_buf(4),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(5),
      Q => new_addr_buf(5),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(6),
      Q => new_addr_buf(6),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(7),
      Q => new_addr_buf(7),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(8),
      Q => new_addr_buf(8),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
\new_addr_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => mem_new_address(9),
      Q => new_addr_buf(9),
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
user_buf_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^mem_rw\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => addr_resp,
      O => ld_addr
    );
user_buf_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ld_addr,
      D => cache_hit,
      Q => user_buf,
      R => \FSM_onehot_state[5]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity burst_controller is
  port (
    clk_i : in STD_LOGIC;
    rst_ni : in STD_LOGIC;
    mem_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_valid : out STD_LOGIC;
    mem_rw : out STD_LOGIC;
    mem_new_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_resp : in STD_LOGIC;
    cache_hit : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of burst_controller : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of burst_controller : entity is "burst_controller,_burst_controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of burst_controller : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of burst_controller : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of burst_controller : entity is "_burst_controller,Vivado 2022.2";
end burst_controller;

architecture STRUCTURE of burst_controller is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_aruser\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awuser\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^m_axi_rid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rlast\ : STD_LOGIC;
  signal \^m_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_arburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_arid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_arlock\ : STD_LOGIC;
  signal \^s_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_arqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_arregion\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_arsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_awcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_awid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_awlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_awlock\ : STD_LOGIC;
  signal \^s_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_awregion\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_awsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^s_axi_wid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC;
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 m_axi ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 m_axi RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 s_axi ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 s_axi RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 s_axi WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 m_axi ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 m_axi ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 m_axi ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 m_axi ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 m_axi ARREGION";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 m_axi ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 m_axi ARUSER";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 m_axi AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 m_axi AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREGION";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 m_axi AWUSER";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 m_axi BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 m_axi RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_wid : signal is "xilinx.com:interface:aximm:1.0 m_axi WID";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 s_axi ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 s_axi ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 s_axi ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 s_axi ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREGION";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 s_axi ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 s_axi ARUSER";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 s_axi AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 s_axi AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 s_axi AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 s_axi AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 s_axi AWUSER";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 s_axi BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 s_axi RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wid : signal is "xilinx.com:interface:aximm:1.0 s_axi WID";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  \^m_axi_bid\(1 downto 0) <= m_axi_bid(1 downto 0);
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^m_axi_rdata\(511 downto 0) <= m_axi_rdata(511 downto 0);
  \^m_axi_rid\(1 downto 0) <= m_axi_rid(1 downto 0);
  \^m_axi_rlast\ <= m_axi_rlast;
  \^m_axi_rresp\(1 downto 0) <= m_axi_rresp(1 downto 0);
  \^m_axi_rvalid\ <= m_axi_rvalid;
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_arburst\(1 downto 0) <= s_axi_arburst(1 downto 0);
  \^s_axi_arcache\(3 downto 0) <= s_axi_arcache(3 downto 0);
  \^s_axi_arid\(1 downto 0) <= s_axi_arid(1 downto 0);
  \^s_axi_arlen\(7 downto 0) <= s_axi_arlen(7 downto 0);
  \^s_axi_arlock\ <= s_axi_arlock;
  \^s_axi_arprot\(2 downto 0) <= s_axi_arprot(2 downto 0);
  \^s_axi_arqos\(3 downto 0) <= s_axi_arqos(3 downto 0);
  \^s_axi_arregion\(3 downto 0) <= s_axi_arregion(3 downto 0);
  \^s_axi_arsize\(2 downto 0) <= s_axi_arsize(2 downto 0);
  \^s_axi_awburst\(1 downto 0) <= s_axi_awburst(1 downto 0);
  \^s_axi_awcache\(3 downto 0) <= s_axi_awcache(3 downto 0);
  \^s_axi_awid\(1 downto 0) <= s_axi_awid(1 downto 0);
  \^s_axi_awlen\(7 downto 0) <= s_axi_awlen(7 downto 0);
  \^s_axi_awlock\ <= s_axi_awlock;
  \^s_axi_awprot\(2 downto 0) <= s_axi_awprot(2 downto 0);
  \^s_axi_awqos\(3 downto 0) <= s_axi_awqos(3 downto 0);
  \^s_axi_awregion\(3 downto 0) <= s_axi_awregion(3 downto 0);
  \^s_axi_awsize\(2 downto 0) <= s_axi_awsize(2 downto 0);
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wdata\(511 downto 0) <= s_axi_wdata(511 downto 0);
  \^s_axi_wid\(1 downto 0) <= s_axi_wid(1 downto 0);
  \^s_axi_wlast\ <= s_axi_wlast;
  \^s_axi_wstrb\(63 downto 0) <= s_axi_wstrb(63 downto 0);
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_arburst(1 downto 0) <= \^s_axi_arburst\(1 downto 0);
  m_axi_arcache(3 downto 0) <= \^s_axi_arcache\(3 downto 0);
  m_axi_arid(1 downto 0) <= \^s_axi_arid\(1 downto 0);
  m_axi_arlen(7 downto 0) <= \^s_axi_arlen\(7 downto 0);
  m_axi_arlock <= \^s_axi_arlock\;
  m_axi_arprot(2 downto 0) <= \^s_axi_arprot\(2 downto 0);
  m_axi_arqos(3 downto 0) <= \^s_axi_arqos\(3 downto 0);
  m_axi_arregion(3 downto 0) <= \^s_axi_arregion\(3 downto 0);
  m_axi_arsize(2 downto 0) <= \^s_axi_arsize\(2 downto 0);
  m_axi_aruser(3) <= \<const0>\;
  m_axi_aruser(2) <= \<const0>\;
  m_axi_aruser(1) <= \<const0>\;
  m_axi_aruser(0) <= \^m_axi_aruser\(0);
  m_axi_awburst(1 downto 0) <= \^s_axi_awburst\(1 downto 0);
  m_axi_awcache(3 downto 0) <= \^s_axi_awcache\(3 downto 0);
  m_axi_awid(1 downto 0) <= \^s_axi_awid\(1 downto 0);
  m_axi_awlen(7 downto 0) <= \^s_axi_awlen\(7 downto 0);
  m_axi_awlock <= \^s_axi_awlock\;
  m_axi_awprot(2 downto 0) <= \^s_axi_awprot\(2 downto 0);
  m_axi_awqos(3 downto 0) <= \^s_axi_awqos\(3 downto 0);
  m_axi_awregion(3 downto 0) <= \^s_axi_awregion\(3 downto 0);
  m_axi_awsize(2 downto 0) <= \^s_axi_awsize\(2 downto 0);
  m_axi_awuser(3) <= \<const0>\;
  m_axi_awuser(2) <= \<const0>\;
  m_axi_awuser(1) <= \<const0>\;
  m_axi_awuser(0) <= \^m_axi_awuser\(0);
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wdata(511 downto 0) <= \^s_axi_wdata\(511 downto 0);
  m_axi_wid(1 downto 0) <= \^s_axi_wid\(1 downto 0);
  m_axi_wlast <= \^s_axi_wlast\;
  m_axi_wstrb(63 downto 0) <= \^s_axi_wstrb\(63 downto 0);
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_bid(1 downto 0) <= \^m_axi_bid\(1 downto 0);
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_rdata(511 downto 0) <= \^m_axi_rdata\(511 downto 0);
  s_axi_rid(1 downto 0) <= \^m_axi_rid\(1 downto 0);
  s_axi_rlast <= \^m_axi_rlast\;
  s_axi_rresp(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  s_axi_rvalid <= \^m_axi_rvalid\;
  s_axi_wready <= \^m_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.\burst_controller__burst_controller\
     port map (
      addr_resp => addr_resp,
      addr_valid => addr_valid,
      cache_hit => cache_hit,
      clk_i => clk_i,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_aruser(0) => \^m_axi_aruser\(0),
      m_axi_arvalid(0) => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awuser(0) => \^m_axi_awuser\(0),
      m_axi_awvalid(0) => m_axi_awvalid,
      mem_address(31 downto 0) => mem_address(31 downto 0),
      mem_new_address(31 downto 0) => mem_new_address(31 downto 0),
      mem_rw => mem_rw,
      rst_ni => rst_ni,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
end STRUCTURE;
