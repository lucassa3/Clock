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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/10/2017 07:40:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fluxoDados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fluxoDados_vhd_vec_tst IS
END fluxoDados_vhd_vec_tst;
ARCHITECTURE fluxoDados_arch OF fluxoDados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL OUT_DEMUX_SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OUT_R0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUT_R1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUT_R2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUT_R3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUT_R4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUT_R5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REG_ENABLE : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL REG_RESET : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL SEL_MUX_DEMUX : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SEL_ULA : STD_LOGIC;
COMPONENT fluxoDados
	PORT (
	CLK : IN STD_LOGIC;
	OUT_DEMUX_SEL : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	OUT_R0 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUT_R1 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUT_R2 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUT_R3 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUT_R4 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUT_R5 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	REG_ENABLE : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	REG_RESET : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	SEL_MUX_DEMUX : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	SEL_ULA : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fluxoDados
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	OUT_DEMUX_SEL => OUT_DEMUX_SEL,
	OUT_R0 => OUT_R0,
	OUT_R1 => OUT_R1,
	OUT_R2 => OUT_R2,
	OUT_R3 => OUT_R3,
	OUT_R4 => OUT_R4,
	OUT_R5 => OUT_R5,
	REG_ENABLE => REG_ENABLE,
	REG_RESET => REG_RESET,
	SEL_MUX_DEMUX => SEL_MUX_DEMUX,
	SEL_ULA => SEL_ULA
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- REG_ENABLE[5]
t_prcs_REG_ENABLE_5: PROCESS
BEGIN
	REG_ENABLE(5) <= '1';
WAIT;
END PROCESS t_prcs_REG_ENABLE_5;
-- REG_ENABLE[4]
t_prcs_REG_ENABLE_4: PROCESS
BEGIN
	REG_ENABLE(4) <= '1';
WAIT;
END PROCESS t_prcs_REG_ENABLE_4;
-- REG_ENABLE[3]
t_prcs_REG_ENABLE_3: PROCESS
BEGIN
	REG_ENABLE(3) <= '1';
WAIT;
END PROCESS t_prcs_REG_ENABLE_3;
-- REG_ENABLE[2]
t_prcs_REG_ENABLE_2: PROCESS
BEGIN
	REG_ENABLE(2) <= '1';
WAIT;
END PROCESS t_prcs_REG_ENABLE_2;
-- REG_ENABLE[1]
t_prcs_REG_ENABLE_1: PROCESS
BEGIN
	REG_ENABLE(1) <= '1';
WAIT;
END PROCESS t_prcs_REG_ENABLE_1;
-- REG_ENABLE[0]
t_prcs_REG_ENABLE_0: PROCESS
BEGIN
	REG_ENABLE(0) <= '1';
WAIT;
END PROCESS t_prcs_REG_ENABLE_0;
-- REG_RESET[5]
t_prcs_REG_RESET_5: PROCESS
BEGIN
	REG_RESET(5) <= '0';
WAIT;
END PROCESS t_prcs_REG_RESET_5;
-- REG_RESET[4]
t_prcs_REG_RESET_4: PROCESS
BEGIN
	REG_RESET(4) <= '0';
WAIT;
END PROCESS t_prcs_REG_RESET_4;
-- REG_RESET[3]
t_prcs_REG_RESET_3: PROCESS
BEGIN
	REG_RESET(3) <= '0';
WAIT;
END PROCESS t_prcs_REG_RESET_3;
-- REG_RESET[2]
t_prcs_REG_RESET_2: PROCESS
BEGIN
	REG_RESET(2) <= '0';
WAIT;
END PROCESS t_prcs_REG_RESET_2;
-- REG_RESET[1]
t_prcs_REG_RESET_1: PROCESS
BEGIN
	REG_RESET(1) <= '0';
WAIT;
END PROCESS t_prcs_REG_RESET_1;
-- REG_RESET[0]
t_prcs_REG_RESET_0: PROCESS
BEGIN
	REG_RESET(0) <= '0';
WAIT;
END PROCESS t_prcs_REG_RESET_0;
-- SEL_MUX_DEMUX[2]
t_prcs_SEL_MUX_DEMUX_2: PROCESS
BEGIN
	SEL_MUX_DEMUX(2) <= '0';
WAIT;
END PROCESS t_prcs_SEL_MUX_DEMUX_2;
-- SEL_MUX_DEMUX[1]
t_prcs_SEL_MUX_DEMUX_1: PROCESS
BEGIN
	SEL_MUX_DEMUX(1) <= '0';
WAIT;
END PROCESS t_prcs_SEL_MUX_DEMUX_1;
-- SEL_MUX_DEMUX[0]
t_prcs_SEL_MUX_DEMUX_0: PROCESS
BEGIN
	SEL_MUX_DEMUX(0) <= '0';
WAIT;
END PROCESS t_prcs_SEL_MUX_DEMUX_0;

-- SEL_ULA
t_prcs_SEL_ULA: PROCESS
BEGIN
	SEL_ULA <= '0';
WAIT;
END PROCESS t_prcs_SEL_ULA;
END fluxoDados_arch;
