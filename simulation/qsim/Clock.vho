-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/10/2017 07:40:30"

-- 
-- Device: Altera EP4CE115F29C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fluxoDados IS
    PORT (
	SEL_MUX_DEMUX : IN std_logic_vector(2 DOWNTO 0);
	SEL_ULA : IN std_logic;
	REG_ENABLE : IN std_logic_vector(5 DOWNTO 0);
	REG_RESET : IN std_logic_vector(5 DOWNTO 0);
	CLK : IN std_logic;
	OUT_R0 : BUFFER std_logic_vector(3 DOWNTO 0);
	OUT_R1 : BUFFER std_logic_vector(3 DOWNTO 0);
	OUT_R2 : BUFFER std_logic_vector(3 DOWNTO 0);
	OUT_R3 : BUFFER std_logic_vector(3 DOWNTO 0);
	OUT_R4 : BUFFER std_logic_vector(3 DOWNTO 0);
	OUT_R5 : BUFFER std_logic_vector(3 DOWNTO 0);
	OUT_DEMUX_SEL : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END fluxoDados;

-- Design Ports Information
-- OUT_R0[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R0[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R0[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R0[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R1[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R1[1]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R1[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R1[3]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R2[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R2[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R2[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R2[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R3[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R3[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R3[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R3[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R4[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R4[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R4[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R4[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R5[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R5[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R5[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_R5[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DEMUX_SEL[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DEMUX_SEL[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DEMUX_SEL[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX_DEMUX[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX_DEMUX[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_MUX_DEMUX[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_RESET[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_ENABLE[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_ULA	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_RESET[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_ENABLE[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_RESET[2]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_ENABLE[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_RESET[3]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_ENABLE[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_RESET[4]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_ENABLE[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_RESET[5]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_ENABLE[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fluxoDados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SEL_MUX_DEMUX : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SEL_ULA : std_logic;
SIGNAL ww_REG_ENABLE : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_REG_RESET : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_OUT_R0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT_R1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT_R2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT_R3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT_R4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT_R5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT_DEMUX_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL \REG_RESET[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_RESET[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_RESET[5]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_RESET[2]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_RESET[3]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_RESET[4]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OUT_R0[0]~output_o\ : std_logic;
SIGNAL \OUT_R0[1]~output_o\ : std_logic;
SIGNAL \OUT_R0[2]~output_o\ : std_logic;
SIGNAL \OUT_R0[3]~output_o\ : std_logic;
SIGNAL \OUT_R1[0]~output_o\ : std_logic;
SIGNAL \OUT_R1[1]~output_o\ : std_logic;
SIGNAL \OUT_R1[2]~output_o\ : std_logic;
SIGNAL \OUT_R1[3]~output_o\ : std_logic;
SIGNAL \OUT_R2[0]~output_o\ : std_logic;
SIGNAL \OUT_R2[1]~output_o\ : std_logic;
SIGNAL \OUT_R2[2]~output_o\ : std_logic;
SIGNAL \OUT_R2[3]~output_o\ : std_logic;
SIGNAL \OUT_R3[0]~output_o\ : std_logic;
SIGNAL \OUT_R3[1]~output_o\ : std_logic;
SIGNAL \OUT_R3[2]~output_o\ : std_logic;
SIGNAL \OUT_R3[3]~output_o\ : std_logic;
SIGNAL \OUT_R4[0]~output_o\ : std_logic;
SIGNAL \OUT_R4[1]~output_o\ : std_logic;
SIGNAL \OUT_R4[2]~output_o\ : std_logic;
SIGNAL \OUT_R4[3]~output_o\ : std_logic;
SIGNAL \OUT_R5[0]~output_o\ : std_logic;
SIGNAL \OUT_R5[1]~output_o\ : std_logic;
SIGNAL \OUT_R5[2]~output_o\ : std_logic;
SIGNAL \OUT_R5[3]~output_o\ : std_logic;
SIGNAL \OUT_DEMUX_SEL[0]~output_o\ : std_logic;
SIGNAL \OUT_DEMUX_SEL[1]~output_o\ : std_logic;
SIGNAL \OUT_DEMUX_SEL[2]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SEL_MUX_DEMUX[2]~input_o\ : std_logic;
SIGNAL \SEL_MUX_DEMUX[0]~input_o\ : std_logic;
SIGNAL \SEL_MUX_DEMUX[1]~input_o\ : std_logic;
SIGNAL \REG_RESET[4]~input_o\ : std_logic;
SIGNAL \REG_RESET[4]~inputclkctrl_outclk\ : std_logic;
SIGNAL \REG_ENABLE[4]~input_o\ : std_logic;
SIGNAL \R4|q[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \R5|q[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \REG_RESET[5]~input_o\ : std_logic;
SIGNAL \REG_RESET[5]~inputclkctrl_outclk\ : std_logic;
SIGNAL \REG_ENABLE[5]~input_o\ : std_logic;
SIGNAL \R5|q[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \MUX6WAY0|Mux3~0_combout\ : std_logic;
SIGNAL \R2|q[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \REG_RESET[2]~input_o\ : std_logic;
SIGNAL \REG_RESET[2]~inputclkctrl_outclk\ : std_logic;
SIGNAL \REG_ENABLE[2]~input_o\ : std_logic;
SIGNAL \R2|q[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \REG_RESET[3]~input_o\ : std_logic;
SIGNAL \REG_RESET[3]~inputclkctrl_outclk\ : std_logic;
SIGNAL \REG_ENABLE[3]~input_o\ : std_logic;
SIGNAL \R3|q[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \REG_RESET[0]~input_o\ : std_logic;
SIGNAL \REG_RESET[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \REG_ENABLE[0]~input_o\ : std_logic;
SIGNAL \R0|q[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \R1|q[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \REG_RESET[1]~input_o\ : std_logic;
SIGNAL \REG_RESET[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \REG_ENABLE[1]~input_o\ : std_logic;
SIGNAL \R1|q[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \MUX6WAY0|Mux3~1_combout\ : std_logic;
SIGNAL \MUX6WAY0|Mux3~2_combout\ : std_logic;
SIGNAL \MUX6WAY0|Mux3~3_combout\ : std_logic;
SIGNAL \SEL_ULA~input_o\ : std_logic;
SIGNAL \R4|q[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \R5|q[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R5|q[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \MUX6WAY0|Mux2~0_combout\ : std_logic;
SIGNAL \R1|q[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R1|q[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \R3|q[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \R0|q[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \R2|q[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R2|q[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \MUX6WAY0|Mux2~1_combout\ : std_logic;
SIGNAL \MUX6WAY0|Mux2~2_combout\ : std_logic;
SIGNAL \MUX6WAY0|Mux2~3_combout\ : std_logic;
SIGNAL \ULA0|ula_out[1]~0_combout\ : std_logic;
SIGNAL \R4|q[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \R5|q[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R5|q[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \MUX6WAY0|Mux1~0_combout\ : std_logic;
SIGNAL \R0|q[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \R1|q[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R1|q[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \MUX6WAY0|Mux1~1_combout\ : std_logic;
SIGNAL \R3|q[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \R2|q[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R2|q[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \MUX6WAY0|Mux1~2_combout\ : std_logic;
SIGNAL \MUX6WAY0|Mux1~3_combout\ : std_logic;
SIGNAL \ULA0|ula_out[2]~1_combout\ : std_logic;
SIGNAL \R4|q[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \R5|q[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R5|q[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \MUX6WAY0|Mux0~2_combout\ : std_logic;
SIGNAL \R1|q[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R1|q[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \R3|q[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R3|q[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \R0|q[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \R2|q[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \R2|q[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \MUX6WAY0|Mux0~0_combout\ : std_logic;
SIGNAL \MUX6WAY0|Mux0~1_combout\ : std_logic;
SIGNAL \ULA0|ula_out[3]~2_combout\ : std_logic;
SIGNAL \ULA0|ula_out[3]~3_combout\ : std_logic;
SIGNAL \R0|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_REG_RESET[4]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_REG_RESET[3]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_REG_RESET[2]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_REG_RESET[5]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_REG_RESET[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_REG_RESET[0]~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SEL_MUX_DEMUX <= SEL_MUX_DEMUX;
ww_SEL_ULA <= SEL_ULA;
ww_REG_ENABLE <= REG_ENABLE;
ww_REG_RESET <= REG_RESET;
ww_CLK <= CLK;
OUT_R0 <= ww_OUT_R0;
OUT_R1 <= ww_OUT_R1;
OUT_R2 <= ww_OUT_R2;
OUT_R3 <= ww_OUT_R3;
OUT_R4 <= ww_OUT_R4;
OUT_R5 <= ww_OUT_R5;
OUT_DEMUX_SEL <= ww_OUT_DEMUX_SEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\REG_RESET[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \REG_RESET[0]~input_o\);

\REG_RESET[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \REG_RESET[1]~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\REG_RESET[5]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \REG_RESET[5]~input_o\);

\REG_RESET[2]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \REG_RESET[2]~input_o\);

\REG_RESET[3]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \REG_RESET[3]~input_o\);

\REG_RESET[4]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \REG_RESET[4]~input_o\);
\ALT_INV_REG_RESET[4]~inputclkctrl_outclk\ <= NOT \REG_RESET[4]~inputclkctrl_outclk\;
\ALT_INV_REG_RESET[3]~inputclkctrl_outclk\ <= NOT \REG_RESET[3]~inputclkctrl_outclk\;
\ALT_INV_REG_RESET[2]~inputclkctrl_outclk\ <= NOT \REG_RESET[2]~inputclkctrl_outclk\;
\ALT_INV_REG_RESET[5]~inputclkctrl_outclk\ <= NOT \REG_RESET[5]~inputclkctrl_outclk\;
\ALT_INV_REG_RESET[1]~inputclkctrl_outclk\ <= NOT \REG_RESET[1]~inputclkctrl_outclk\;
\ALT_INV_REG_RESET[0]~inputclkctrl_outclk\ <= NOT \REG_RESET[0]~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y48_N2
\OUT_R0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0|q\(0),
	devoe => ww_devoe,
	o => \OUT_R0[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\OUT_R0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0|q\(1),
	devoe => ww_devoe,
	o => \OUT_R0[1]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\OUT_R0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0|q\(2),
	devoe => ww_devoe,
	o => \OUT_R0[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\OUT_R0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0|q\(3),
	devoe => ww_devoe,
	o => \OUT_R0[3]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\OUT_R1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|q\(0),
	devoe => ww_devoe,
	o => \OUT_R1[0]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\OUT_R1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|q\(1),
	devoe => ww_devoe,
	o => \OUT_R1[1]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\OUT_R1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|q\(2),
	devoe => ww_devoe,
	o => \OUT_R1[2]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\OUT_R1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|q\(3),
	devoe => ww_devoe,
	o => \OUT_R1[3]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\OUT_R2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2|q\(0),
	devoe => ww_devoe,
	o => \OUT_R2[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\OUT_R2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2|q\(1),
	devoe => ww_devoe,
	o => \OUT_R2[1]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\OUT_R2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2|q\(2),
	devoe => ww_devoe,
	o => \OUT_R2[2]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\OUT_R2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2|q\(3),
	devoe => ww_devoe,
	o => \OUT_R2[3]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\OUT_R3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3|q\(0),
	devoe => ww_devoe,
	o => \OUT_R3[0]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\OUT_R3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3|q\(1),
	devoe => ww_devoe,
	o => \OUT_R3[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\OUT_R3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3|q\(2),
	devoe => ww_devoe,
	o => \OUT_R3[2]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\OUT_R3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3|q\(3),
	devoe => ww_devoe,
	o => \OUT_R3[3]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\OUT_R4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R4|q\(0),
	devoe => ww_devoe,
	o => \OUT_R4[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\OUT_R4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R4|q\(1),
	devoe => ww_devoe,
	o => \OUT_R4[1]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\OUT_R4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R4|q\(2),
	devoe => ww_devoe,
	o => \OUT_R4[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\OUT_R4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R4|q\(3),
	devoe => ww_devoe,
	o => \OUT_R4[3]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\OUT_R5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R5|q\(0),
	devoe => ww_devoe,
	o => \OUT_R5[0]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\OUT_R5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R5|q\(1),
	devoe => ww_devoe,
	o => \OUT_R5[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\OUT_R5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R5|q\(2),
	devoe => ww_devoe,
	o => \OUT_R5[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\OUT_R5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R5|q\(3),
	devoe => ww_devoe,
	o => \OUT_R5[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\OUT_DEMUX_SEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEL_MUX_DEMUX[0]~input_o\,
	devoe => ww_devoe,
	o => \OUT_DEMUX_SEL[0]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\OUT_DEMUX_SEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEL_MUX_DEMUX[1]~input_o\,
	devoe => ww_devoe,
	o => \OUT_DEMUX_SEL[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\OUT_DEMUX_SEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEL_MUX_DEMUX[2]~input_o\,
	devoe => ww_devoe,
	o => \OUT_DEMUX_SEL[2]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y44_N15
\SEL_MUX_DEMUX[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_MUX_DEMUX(2),
	o => \SEL_MUX_DEMUX[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\SEL_MUX_DEMUX[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_MUX_DEMUX(0),
	o => \SEL_MUX_DEMUX[0]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\SEL_MUX_DEMUX[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_MUX_DEMUX(1),
	o => \SEL_MUX_DEMUX[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\REG_RESET[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_RESET(4),
	o => \REG_RESET[4]~input_o\);

-- Location: CLKCTRL_G17
\REG_RESET[4]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \REG_RESET[4]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \REG_RESET[4]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y46_N15
\REG_ENABLE[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_ENABLE(4),
	o => \REG_ENABLE[4]~input_o\);

-- Location: FF_X2_Y55_N21
\R4|q[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MUX6WAY0|Mux3~3_combout\,
	clrn => \ALT_INV_REG_RESET[4]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R4|q[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y55_N4
\R5|q[0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R5|q[0]~_Duplicate_1feeder_combout\ = \MUX6WAY0|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUX6WAY0|Mux3~3_combout\,
	combout => \R5|q[0]~_Duplicate_1feeder_combout\);

-- Location: IOIBUF_X58_Y0_N8
\REG_RESET[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_RESET(5),
	o => \REG_RESET[5]~input_o\);

-- Location: CLKCTRL_G16
\REG_RESET[5]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \REG_RESET[5]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \REG_RESET[5]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y61_N22
\REG_ENABLE[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_ENABLE(5),
	o => \REG_ENABLE[5]~input_o\);

-- Location: FF_X3_Y55_N5
\R5|q[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R5|q[0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[5]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X2_Y55_N20
\MUX6WAY0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux3~0_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & (((\R5|q[0]~_Duplicate_1_q\)))) # (!\SEL_MUX_DEMUX[0]~input_o\ & ((\SEL_MUX_DEMUX[1]~input_o\ & ((\R5|q[0]~_Duplicate_1_q\))) # (!\SEL_MUX_DEMUX[1]~input_o\ & (\R4|q[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[0]~input_o\,
	datab => \SEL_MUX_DEMUX[1]~input_o\,
	datac => \R4|q[0]~_Duplicate_1_q\,
	datad => \R5|q[0]~_Duplicate_1_q\,
	combout => \MUX6WAY0|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y54_N0
\R2|q[0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|q[0]~_Duplicate_1feeder_combout\ = \MUX6WAY0|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MUX6WAY0|Mux3~3_combout\,
	combout => \R2|q[0]~_Duplicate_1feeder_combout\);

-- Location: IOIBUF_X58_Y0_N15
\REG_RESET[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_RESET(2),
	o => \REG_RESET[2]~input_o\);

-- Location: CLKCTRL_G19
\REG_RESET[2]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \REG_RESET[2]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \REG_RESET[2]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y46_N22
\REG_ENABLE[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_ENABLE(2),
	o => \REG_ENABLE[2]~input_o\);

-- Location: FF_X1_Y54_N1
\R2|q[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R2|q[0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[2]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q[0]~_Duplicate_1_q\);

-- Location: IOIBUF_X58_Y0_N22
\REG_RESET[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_RESET(3),
	o => \REG_RESET[3]~input_o\);

-- Location: CLKCTRL_G18
\REG_RESET[3]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \REG_RESET[3]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \REG_RESET[3]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y62_N22
\REG_ENABLE[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_ENABLE(3),
	o => \REG_ENABLE[3]~input_o\);

-- Location: FF_X1_Y55_N1
\R3|q[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MUX6WAY0|Mux3~3_combout\,
	clrn => \ALT_INV_REG_RESET[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|q[0]~_Duplicate_1_q\);

-- Location: IOIBUF_X0_Y36_N15
\REG_RESET[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_RESET(0),
	o => \REG_RESET[0]~input_o\);

-- Location: CLKCTRL_G4
\REG_RESET[0]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \REG_RESET[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \REG_RESET[0]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y48_N8
\REG_ENABLE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_ENABLE(0),
	o => \REG_ENABLE[0]~input_o\);

-- Location: FF_X1_Y55_N21
\R0|q[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MUX6WAY0|Mux3~3_combout\,
	clrn => \ALT_INV_REG_RESET[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|q[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X2_Y55_N24
\R1|q[0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1|q[0]~_Duplicate_1feeder_combout\ = \MUX6WAY0|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MUX6WAY0|Mux3~3_combout\,
	combout => \R1|q[0]~_Duplicate_1feeder_combout\);

-- Location: IOIBUF_X0_Y36_N22
\REG_RESET[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_RESET(1),
	o => \REG_RESET[1]~input_o\);

-- Location: CLKCTRL_G3
\REG_RESET[1]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \REG_RESET[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \REG_RESET[1]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y45_N15
\REG_ENABLE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_ENABLE(1),
	o => \REG_ENABLE[1]~input_o\);

-- Location: FF_X2_Y55_N25
\R1|q[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R1|q[0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[1]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y55_N20
\MUX6WAY0|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux3~1_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & ((\SEL_MUX_DEMUX[1]~input_o\) # ((\R1|q[0]~_Duplicate_1_q\)))) # (!\SEL_MUX_DEMUX[0]~input_o\ & (!\SEL_MUX_DEMUX[1]~input_o\ & (\R0|q[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[0]~input_o\,
	datab => \SEL_MUX_DEMUX[1]~input_o\,
	datac => \R0|q[0]~_Duplicate_1_q\,
	datad => \R1|q[0]~_Duplicate_1_q\,
	combout => \MUX6WAY0|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y55_N0
\MUX6WAY0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux3~2_combout\ = (\SEL_MUX_DEMUX[1]~input_o\ & ((\MUX6WAY0|Mux3~1_combout\ & ((\R3|q[0]~_Duplicate_1_q\))) # (!\MUX6WAY0|Mux3~1_combout\ & (\R2|q[0]~_Duplicate_1_q\)))) # (!\SEL_MUX_DEMUX[1]~input_o\ & (((\MUX6WAY0|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2|q[0]~_Duplicate_1_q\,
	datab => \SEL_MUX_DEMUX[1]~input_o\,
	datac => \R3|q[0]~_Duplicate_1_q\,
	datad => \MUX6WAY0|Mux3~1_combout\,
	combout => \MUX6WAY0|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y55_N4
\MUX6WAY0|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux3~3_combout\ = (\SEL_MUX_DEMUX[2]~input_o\ & (!\MUX6WAY0|Mux3~0_combout\)) # (!\SEL_MUX_DEMUX[2]~input_o\ & ((!\MUX6WAY0|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_MUX_DEMUX[2]~input_o\,
	datac => \MUX6WAY0|Mux3~0_combout\,
	datad => \MUX6WAY0|Mux3~2_combout\,
	combout => \MUX6WAY0|Mux3~3_combout\);

-- Location: DDIOOUTCELL_X0_Y48_N4
\R0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX6WAY0|Mux3~3_combout\,
	clrn => \ALT_INV_REG_RESET[0]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|q\(0));

-- Location: IOIBUF_X0_Y62_N15
\SEL_ULA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_ULA,
	o => \SEL_ULA~input_o\);

-- Location: FF_X2_Y55_N15
\R4|q[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ULA0|ula_out[1]~0_combout\,
	clrn => \ALT_INV_REG_RESET[4]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R4|q[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y55_N6
\R5|q[1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R5|q[1]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ULA0|ula_out[1]~0_combout\,
	combout => \R5|q[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X3_Y55_N7
\R5|q[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R5|q[1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[5]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X2_Y55_N14
\MUX6WAY0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux2~0_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & (((\R5|q[1]~_Duplicate_1_q\)))) # (!\SEL_MUX_DEMUX[0]~input_o\ & ((\SEL_MUX_DEMUX[1]~input_o\ & ((\R5|q[1]~_Duplicate_1_q\))) # (!\SEL_MUX_DEMUX[1]~input_o\ & (\R4|q[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[0]~input_o\,
	datab => \SEL_MUX_DEMUX[1]~input_o\,
	datac => \R4|q[1]~_Duplicate_1_q\,
	datad => \R5|q[1]~_Duplicate_1_q\,
	combout => \MUX6WAY0|Mux2~0_combout\);

-- Location: LCCOMB_X2_Y55_N18
\R1|q[1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1|q[1]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ULA0|ula_out[1]~0_combout\,
	combout => \R1|q[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X2_Y55_N19
\R1|q[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R1|q[1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[1]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q[1]~_Duplicate_1_q\);

-- Location: FF_X1_Y55_N3
\R3|q[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ULA0|ula_out[1]~0_combout\,
	clrn => \ALT_INV_REG_RESET[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|q[1]~_Duplicate_1_q\);

-- Location: FF_X1_Y55_N7
\R0|q[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ULA0|ula_out[1]~0_combout\,
	clrn => \ALT_INV_REG_RESET[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|q[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y54_N18
\R2|q[1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|q[1]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ULA0|ula_out[1]~0_combout\,
	combout => \R2|q[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X1_Y54_N19
\R2|q[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R2|q[1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[2]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y55_N6
\MUX6WAY0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux2~1_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & (\SEL_MUX_DEMUX[1]~input_o\)) # (!\SEL_MUX_DEMUX[0]~input_o\ & ((\SEL_MUX_DEMUX[1]~input_o\ & ((\R2|q[1]~_Duplicate_1_q\))) # (!\SEL_MUX_DEMUX[1]~input_o\ & (\R0|q[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[0]~input_o\,
	datab => \SEL_MUX_DEMUX[1]~input_o\,
	datac => \R0|q[1]~_Duplicate_1_q\,
	datad => \R2|q[1]~_Duplicate_1_q\,
	combout => \MUX6WAY0|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y55_N2
\MUX6WAY0|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux2~2_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & ((\MUX6WAY0|Mux2~1_combout\ & ((\R3|q[1]~_Duplicate_1_q\))) # (!\MUX6WAY0|Mux2~1_combout\ & (\R1|q[1]~_Duplicate_1_q\)))) # (!\SEL_MUX_DEMUX[0]~input_o\ & (((\MUX6WAY0|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[0]~input_o\,
	datab => \R1|q[1]~_Duplicate_1_q\,
	datac => \R3|q[1]~_Duplicate_1_q\,
	datad => \MUX6WAY0|Mux2~1_combout\,
	combout => \MUX6WAY0|Mux2~2_combout\);

-- Location: LCCOMB_X1_Y55_N18
\MUX6WAY0|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux2~3_combout\ = (\SEL_MUX_DEMUX[2]~input_o\ & (\MUX6WAY0|Mux2~0_combout\)) # (!\SEL_MUX_DEMUX[2]~input_o\ & ((\MUX6WAY0|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_MUX_DEMUX[2]~input_o\,
	datac => \MUX6WAY0|Mux2~0_combout\,
	datad => \MUX6WAY0|Mux2~2_combout\,
	combout => \MUX6WAY0|Mux2~3_combout\);

-- Location: LCCOMB_X1_Y55_N8
\ULA0|ula_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ula_out[1]~0_combout\ = \MUX6WAY0|Mux2~3_combout\ $ (((!\SEL_ULA~input_o\ & !\MUX6WAY0|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA~input_o\,
	datac => \MUX6WAY0|Mux3~3_combout\,
	datad => \MUX6WAY0|Mux2~3_combout\,
	combout => \ULA0|ula_out[1]~0_combout\);

-- Location: DDIOOUTCELL_X0_Y52_N25
\R0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[1]~0_combout\,
	clrn => \ALT_INV_REG_RESET[0]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|q\(1));

-- Location: FF_X2_Y55_N1
\R4|q[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ULA0|ula_out[2]~1_combout\,
	clrn => \ALT_INV_REG_RESET[4]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R4|q[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y55_N28
\R5|q[2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R5|q[2]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ULA0|ula_out[2]~1_combout\,
	combout => \R5|q[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X3_Y55_N29
\R5|q[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R5|q[2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[5]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X2_Y55_N0
\MUX6WAY0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux1~0_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & (((\R5|q[2]~_Duplicate_1_q\)))) # (!\SEL_MUX_DEMUX[0]~input_o\ & ((\SEL_MUX_DEMUX[1]~input_o\ & ((\R5|q[2]~_Duplicate_1_q\))) # (!\SEL_MUX_DEMUX[1]~input_o\ & (\R4|q[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[0]~input_o\,
	datab => \SEL_MUX_DEMUX[1]~input_o\,
	datac => \R4|q[2]~_Duplicate_1_q\,
	datad => \R5|q[2]~_Duplicate_1_q\,
	combout => \MUX6WAY0|Mux1~0_combout\);

-- Location: FF_X1_Y55_N29
\R0|q[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ULA0|ula_out[2]~1_combout\,
	clrn => \ALT_INV_REG_RESET[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|q[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X2_Y55_N28
\R1|q[2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1|q[2]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA0|ula_out[2]~1_combout\,
	combout => \R1|q[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X2_Y55_N29
\R1|q[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R1|q[2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[1]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y55_N28
\MUX6WAY0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux1~1_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & ((\SEL_MUX_DEMUX[1]~input_o\) # ((\R1|q[2]~_Duplicate_1_q\)))) # (!\SEL_MUX_DEMUX[0]~input_o\ & (!\SEL_MUX_DEMUX[1]~input_o\ & (\R0|q[2]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[0]~input_o\,
	datab => \SEL_MUX_DEMUX[1]~input_o\,
	datac => \R0|q[2]~_Duplicate_1_q\,
	datad => \R1|q[2]~_Duplicate_1_q\,
	combout => \MUX6WAY0|Mux1~1_combout\);

-- Location: FF_X1_Y55_N25
\R3|q[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ULA0|ula_out[2]~1_combout\,
	clrn => \ALT_INV_REG_RESET[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|q[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y54_N8
\R2|q[2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|q[2]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA0|ula_out[2]~1_combout\,
	combout => \R2|q[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X1_Y54_N9
\R2|q[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R2|q[2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[2]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y55_N24
\MUX6WAY0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux1~2_combout\ = (\SEL_MUX_DEMUX[1]~input_o\ & ((\MUX6WAY0|Mux1~1_combout\ & (\R3|q[2]~_Duplicate_1_q\)) # (!\MUX6WAY0|Mux1~1_combout\ & ((\R2|q[2]~_Duplicate_1_q\))))) # (!\SEL_MUX_DEMUX[1]~input_o\ & (\MUX6WAY0|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[1]~input_o\,
	datab => \MUX6WAY0|Mux1~1_combout\,
	datac => \R3|q[2]~_Duplicate_1_q\,
	datad => \R2|q[2]~_Duplicate_1_q\,
	combout => \MUX6WAY0|Mux1~2_combout\);

-- Location: LCCOMB_X1_Y55_N30
\MUX6WAY0|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux1~3_combout\ = (\SEL_MUX_DEMUX[2]~input_o\ & (\MUX6WAY0|Mux1~0_combout\)) # (!\SEL_MUX_DEMUX[2]~input_o\ & ((\MUX6WAY0|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_MUX_DEMUX[2]~input_o\,
	datac => \MUX6WAY0|Mux1~0_combout\,
	datad => \MUX6WAY0|Mux1~2_combout\,
	combout => \MUX6WAY0|Mux1~3_combout\);

-- Location: LCCOMB_X1_Y55_N16
\ULA0|ula_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ula_out[2]~1_combout\ = \MUX6WAY0|Mux1~3_combout\ $ (((\MUX6WAY0|Mux2~3_combout\ & ((\SEL_ULA~input_o\) # (!\MUX6WAY0|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA~input_o\,
	datab => \MUX6WAY0|Mux3~3_combout\,
	datac => \MUX6WAY0|Mux1~3_combout\,
	datad => \MUX6WAY0|Mux2~3_combout\,
	combout => \ULA0|ula_out[2]~1_combout\);

-- Location: DDIOOUTCELL_X0_Y51_N18
\R0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[2]~1_combout\,
	clrn => \ALT_INV_REG_RESET[0]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|q\(2));

-- Location: FF_X2_Y55_N31
\R4|q[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ULA0|ula_out[3]~3_combout\,
	clrn => \ALT_INV_REG_RESET[4]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R4|q[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X3_Y55_N26
\R5|q[3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R5|q[3]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ULA0|ula_out[3]~3_combout\,
	combout => \R5|q[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X3_Y55_N27
\R5|q[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R5|q[3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[5]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X2_Y55_N30
\MUX6WAY0|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux0~2_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & (((\R5|q[3]~_Duplicate_1_q\)))) # (!\SEL_MUX_DEMUX[0]~input_o\ & ((\SEL_MUX_DEMUX[1]~input_o\ & ((\R5|q[3]~_Duplicate_1_q\))) # (!\SEL_MUX_DEMUX[1]~input_o\ & (\R4|q[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[0]~input_o\,
	datab => \SEL_MUX_DEMUX[1]~input_o\,
	datac => \R4|q[3]~_Duplicate_1_q\,
	datad => \R5|q[3]~_Duplicate_1_q\,
	combout => \MUX6WAY0|Mux0~2_combout\);

-- Location: LCCOMB_X2_Y55_N2
\R1|q[3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1|q[3]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA0|ula_out[3]~3_combout\,
	combout => \R1|q[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X2_Y55_N3
\R1|q[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R1|q[3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[1]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y55_N14
\R3|q[3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R3|q[3]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA0|ula_out[3]~3_combout\,
	combout => \R3|q[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X1_Y55_N15
\R3|q[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R3|q[3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[3]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|q[3]~_Duplicate_1_q\);

-- Location: FF_X1_Y55_N11
\R0|q[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ULA0|ula_out[3]~3_combout\,
	clrn => \ALT_INV_REG_RESET[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REG_ENABLE[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|q[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y54_N10
\R2|q[3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|q[3]~_Duplicate_1feeder_combout\ = \ULA0|ula_out[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ULA0|ula_out[3]~3_combout\,
	combout => \R2|q[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X1_Y54_N11
\R2|q[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \R2|q[3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_REG_RESET[2]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X1_Y55_N10
\MUX6WAY0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux0~0_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & (\SEL_MUX_DEMUX[1]~input_o\)) # (!\SEL_MUX_DEMUX[0]~input_o\ & ((\SEL_MUX_DEMUX[1]~input_o\ & ((\R2|q[3]~_Duplicate_1_q\))) # (!\SEL_MUX_DEMUX[1]~input_o\ & (\R0|q[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_MUX_DEMUX[0]~input_o\,
	datab => \SEL_MUX_DEMUX[1]~input_o\,
	datac => \R0|q[3]~_Duplicate_1_q\,
	datad => \R2|q[3]~_Duplicate_1_q\,
	combout => \MUX6WAY0|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y55_N22
\MUX6WAY0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX6WAY0|Mux0~1_combout\ = (\SEL_MUX_DEMUX[0]~input_o\ & ((\MUX6WAY0|Mux0~0_combout\ & ((\R3|q[3]~_Duplicate_1_q\))) # (!\MUX6WAY0|Mux0~0_combout\ & (\R1|q[3]~_Duplicate_1_q\)))) # (!\SEL_MUX_DEMUX[0]~input_o\ & (((\MUX6WAY0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1|q[3]~_Duplicate_1_q\,
	datab => \R3|q[3]~_Duplicate_1_q\,
	datac => \SEL_MUX_DEMUX[0]~input_o\,
	datad => \MUX6WAY0|Mux0~0_combout\,
	combout => \MUX6WAY0|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y55_N12
\ULA0|ula_out[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ula_out[3]~2_combout\ = (\SEL_ULA~input_o\ & (((\MUX6WAY0|Mux1~3_combout\) # (\MUX6WAY0|Mux2~3_combout\)))) # (!\SEL_ULA~input_o\ & (!\MUX6WAY0|Mux3~3_combout\ & (\MUX6WAY0|Mux1~3_combout\ & \MUX6WAY0|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA~input_o\,
	datab => \MUX6WAY0|Mux3~3_combout\,
	datac => \MUX6WAY0|Mux1~3_combout\,
	datad => \MUX6WAY0|Mux2~3_combout\,
	combout => \ULA0|ula_out[3]~2_combout\);

-- Location: LCCOMB_X1_Y55_N26
\ULA0|ula_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ula_out[3]~3_combout\ = \ULA0|ula_out[3]~2_combout\ $ (((\SEL_MUX_DEMUX[2]~input_o\ & (\MUX6WAY0|Mux0~2_combout\)) # (!\SEL_MUX_DEMUX[2]~input_o\ & ((\MUX6WAY0|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX6WAY0|Mux0~2_combout\,
	datab => \SEL_MUX_DEMUX[2]~input_o\,
	datac => \MUX6WAY0|Mux0~1_combout\,
	datad => \ULA0|ula_out[3]~2_combout\,
	combout => \ULA0|ula_out[3]~3_combout\);

-- Location: DDIOOUTCELL_X0_Y55_N25
\R0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[3]~3_combout\,
	clrn => \ALT_INV_REG_RESET[0]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0|q\(3));

-- Location: DDIOOUTCELL_X0_Y47_N25
\R1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX6WAY0|Mux3~3_combout\,
	clrn => \ALT_INV_REG_RESET[1]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(0));

-- Location: DDIOOUTCELL_X0_Y53_N11
\R1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[1]~0_combout\,
	clrn => \ALT_INV_REG_RESET[1]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(1));

-- Location: DDIOOUTCELL_X0_Y50_N25
\R1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[2]~1_combout\,
	clrn => \ALT_INV_REG_RESET[1]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(2));

-- Location: DDIOOUTCELL_X0_Y53_N4
\R1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[3]~3_combout\,
	clrn => \ALT_INV_REG_RESET[1]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|q\(3));

-- Location: DDIOOUTCELL_X0_Y47_N18
\R2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX6WAY0|Mux3~3_combout\,
	clrn => \ALT_INV_REG_RESET[2]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(0));

-- Location: DDIOOUTCELL_X0_Y52_N18
\R2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[1]~0_combout\,
	clrn => \ALT_INV_REG_RESET[2]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(1));

-- Location: DDIOOUTCELL_X0_Y49_N4
\R2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[2]~1_combout\,
	clrn => \ALT_INV_REG_RESET[2]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(2));

-- Location: DDIOOUTCELL_X0_Y54_N11
\R2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[3]~3_combout\,
	clrn => \ALT_INV_REG_RESET[2]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|q\(3));

-- Location: DDIOOUTCELL_X0_Y50_N18
\R3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX6WAY0|Mux3~3_combout\,
	clrn => \ALT_INV_REG_RESET[3]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|q\(0));

-- Location: DDIOOUTCELL_X0_Y57_N18
\R3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[1]~0_combout\,
	clrn => \ALT_INV_REG_RESET[3]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|q\(1));

-- Location: DDIOOUTCELL_X0_Y59_N18
\R3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[2]~1_combout\,
	clrn => \ALT_INV_REG_RESET[3]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|q\(2));

-- Location: DDIOOUTCELL_X0_Y57_N25
\R3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[3]~3_combout\,
	clrn => \ALT_INV_REG_RESET[3]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|q\(3));

-- Location: DDIOOUTCELL_X0_Y47_N4
\R4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX6WAY0|Mux3~3_combout\,
	clrn => \ALT_INV_REG_RESET[4]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R4|q\(0));

-- Location: DDIOOUTCELL_X0_Y52_N4
\R4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[1]~0_combout\,
	clrn => \ALT_INV_REG_RESET[4]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R4|q\(1));

-- Location: DDIOOUTCELL_X0_Y49_N11
\R4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[2]~1_combout\,
	clrn => \ALT_INV_REG_RESET[4]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R4|q\(2));

-- Location: DDIOOUTCELL_X0_Y55_N11
\R4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[3]~3_combout\,
	clrn => \ALT_INV_REG_RESET[4]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R4|q\(3));

-- Location: DDIOOUTCELL_X0_Y60_N18
\R5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MUX6WAY0|Mux3~3_combout\,
	clrn => \ALT_INV_REG_RESET[5]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(0));

-- Location: DDIOOUTCELL_X0_Y58_N18
\R5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[1]~0_combout\,
	clrn => \ALT_INV_REG_RESET[5]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(1));

-- Location: DDIOOUTCELL_X0_Y59_N25
\R5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[2]~1_combout\,
	clrn => \ALT_INV_REG_RESET[5]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(2));

-- Location: DDIOOUTCELL_X0_Y55_N18
\R5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ULA0|ula_out[3]~3_combout\,
	clrn => \ALT_INV_REG_RESET[5]~inputclkctrl_outclk\,
	ena => \REG_ENABLE[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(3));

ww_OUT_R0(0) <= \OUT_R0[0]~output_o\;

ww_OUT_R0(1) <= \OUT_R0[1]~output_o\;

ww_OUT_R0(2) <= \OUT_R0[2]~output_o\;

ww_OUT_R0(3) <= \OUT_R0[3]~output_o\;

ww_OUT_R1(0) <= \OUT_R1[0]~output_o\;

ww_OUT_R1(1) <= \OUT_R1[1]~output_o\;

ww_OUT_R1(2) <= \OUT_R1[2]~output_o\;

ww_OUT_R1(3) <= \OUT_R1[3]~output_o\;

ww_OUT_R2(0) <= \OUT_R2[0]~output_o\;

ww_OUT_R2(1) <= \OUT_R2[1]~output_o\;

ww_OUT_R2(2) <= \OUT_R2[2]~output_o\;

ww_OUT_R2(3) <= \OUT_R2[3]~output_o\;

ww_OUT_R3(0) <= \OUT_R3[0]~output_o\;

ww_OUT_R3(1) <= \OUT_R3[1]~output_o\;

ww_OUT_R3(2) <= \OUT_R3[2]~output_o\;

ww_OUT_R3(3) <= \OUT_R3[3]~output_o\;

ww_OUT_R4(0) <= \OUT_R4[0]~output_o\;

ww_OUT_R4(1) <= \OUT_R4[1]~output_o\;

ww_OUT_R4(2) <= \OUT_R4[2]~output_o\;

ww_OUT_R4(3) <= \OUT_R4[3]~output_o\;

ww_OUT_R5(0) <= \OUT_R5[0]~output_o\;

ww_OUT_R5(1) <= \OUT_R5[1]~output_o\;

ww_OUT_R5(2) <= \OUT_R5[2]~output_o\;

ww_OUT_R5(3) <= \OUT_R5[3]~output_o\;

ww_OUT_DEMUX_SEL(0) <= \OUT_DEMUX_SEL[0]~output_o\;

ww_OUT_DEMUX_SEL(1) <= \OUT_DEMUX_SEL[1]~output_o\;

ww_OUT_DEMUX_SEL(2) <= \OUT_DEMUX_SEL[2]~output_o\;
END structure;


