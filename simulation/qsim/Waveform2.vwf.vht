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
-- Generated on "10/10/2017 07:24:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux6Way
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux6Way_vhd_vec_tst IS
END Mux6Way_vhd_vec_tst;
ARCHITECTURE Mux6Way_arch OF Mux6Way_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL IN0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IN1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IN2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IN3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IN4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IN5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUT0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Mux6Way
	PORT (
	IN0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	IN1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	IN2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	IN3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	IN4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	IN5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUT0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SEL : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux6Way
	PORT MAP (
-- list connections between master ports and signals
	IN0 => IN0,
	IN1 => IN1,
	IN2 => IN2,
	IN3 => IN3,
	IN4 => IN4,
	IN5 => IN5,
	OUT0 => OUT0,
	SEL => SEL
	);
-- IN0[3]
t_prcs_IN0_3: PROCESS
BEGIN
	IN0(3) <= '0';
WAIT;
END PROCESS t_prcs_IN0_3;
-- IN0[2]
t_prcs_IN0_2: PROCESS
BEGIN
	IN0(2) <= '0';
WAIT;
END PROCESS t_prcs_IN0_2;
-- IN0[1]
t_prcs_IN0_1: PROCESS
BEGIN
	IN0(1) <= '0';
WAIT;
END PROCESS t_prcs_IN0_1;
-- IN0[0]
t_prcs_IN0_0: PROCESS
BEGIN
	IN0(0) <= '0';
	WAIT FOR 10000 ps;
	IN0(0) <= '1';
	WAIT FOR 90000 ps;
	IN0(0) <= '0';
WAIT;
END PROCESS t_prcs_IN0_0;
-- IN1[3]
t_prcs_IN1_3: PROCESS
BEGIN
	IN1(3) <= '0';
WAIT;
END PROCESS t_prcs_IN1_3;
-- IN1[2]
t_prcs_IN1_2: PROCESS
BEGIN
	IN1(2) <= '0';
	WAIT FOR 70000 ps;
	IN1(2) <= '1';
	WAIT FOR 100000 ps;
	IN1(2) <= '0';
WAIT;
END PROCESS t_prcs_IN1_2;
-- IN1[1]
t_prcs_IN1_1: PROCESS
BEGIN
	IN1(1) <= '0';
	WAIT FOR 70000 ps;
	IN1(1) <= '1';
	WAIT FOR 100000 ps;
	IN1(1) <= '0';
WAIT;
END PROCESS t_prcs_IN1_1;
-- IN1[0]
t_prcs_IN1_0: PROCESS
BEGIN
	IN1(0) <= '0';
WAIT;
END PROCESS t_prcs_IN1_0;
-- IN2[3]
t_prcs_IN2_3: PROCESS
BEGIN
	IN2(3) <= '0';
WAIT;
END PROCESS t_prcs_IN2_3;
-- IN2[2]
t_prcs_IN2_2: PROCESS
BEGIN
	IN2(2) <= '0';
WAIT;
END PROCESS t_prcs_IN2_2;
-- IN2[1]
t_prcs_IN2_1: PROCESS
BEGIN
	IN2(1) <= '0';
WAIT;
END PROCESS t_prcs_IN2_1;
-- IN2[0]
t_prcs_IN2_0: PROCESS
BEGIN
	IN2(0) <= '0';
WAIT;
END PROCESS t_prcs_IN2_0;
-- IN3[3]
t_prcs_IN3_3: PROCESS
BEGIN
	IN3(3) <= '0';
WAIT;
END PROCESS t_prcs_IN3_3;
-- IN3[2]
t_prcs_IN3_2: PROCESS
BEGIN
	IN3(2) <= '0';
WAIT;
END PROCESS t_prcs_IN3_2;
-- IN3[1]
t_prcs_IN3_1: PROCESS
BEGIN
	IN3(1) <= '0';
WAIT;
END PROCESS t_prcs_IN3_1;
-- IN3[0]
t_prcs_IN3_0: PROCESS
BEGIN
	IN3(0) <= '0';
WAIT;
END PROCESS t_prcs_IN3_0;
-- IN4[3]
t_prcs_IN4_3: PROCESS
BEGIN
	IN4(3) <= '0';
WAIT;
END PROCESS t_prcs_IN4_3;
-- IN4[2]
t_prcs_IN4_2: PROCESS
BEGIN
	IN4(2) <= '0';
WAIT;
END PROCESS t_prcs_IN4_2;
-- IN4[1]
t_prcs_IN4_1: PROCESS
BEGIN
	IN4(1) <= '0';
WAIT;
END PROCESS t_prcs_IN4_1;
-- IN4[0]
t_prcs_IN4_0: PROCESS
BEGIN
	IN4(0) <= '0';
WAIT;
END PROCESS t_prcs_IN4_0;
-- IN5[3]
t_prcs_IN5_3: PROCESS
BEGIN
	IN5(3) <= '0';
WAIT;
END PROCESS t_prcs_IN5_3;
-- IN5[2]
t_prcs_IN5_2: PROCESS
BEGIN
	IN5(2) <= '0';
WAIT;
END PROCESS t_prcs_IN5_2;
-- IN5[1]
t_prcs_IN5_1: PROCESS
BEGIN
	IN5(1) <= '0';
WAIT;
END PROCESS t_prcs_IN5_1;
-- IN5[0]
t_prcs_IN5_0: PROCESS
BEGIN
	IN5(0) <= '0';
WAIT;
END PROCESS t_prcs_IN5_0;
-- SEL[2]
t_prcs_SEL_2: PROCESS
BEGIN
	SEL(2) <= '0';
WAIT;
END PROCESS t_prcs_SEL_2;
-- SEL[1]
t_prcs_SEL_1: PROCESS
BEGIN
	SEL(1) <= '0';
WAIT;
END PROCESS t_prcs_SEL_1;
-- SEL[0]
t_prcs_SEL_0: PROCESS
BEGIN
	SEL(0) <= '0';
	WAIT FOR 80000 ps;
	SEL(0) <= '1';
	WAIT FOR 60000 ps;
	SEL(0) <= '0';
WAIT;
END PROCESS t_prcs_SEL_0;
END Mux6Way_arch;
