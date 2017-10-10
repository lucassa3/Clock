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
-- Generated on "10/10/2017 07:36:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ula
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ula_vhd_vec_tst IS
END ula_vhd_vec_tst;
ARCHITECTURE ula_arch OF ula_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in_a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL in_b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
SIGNAL ula_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ula
	PORT (
	in_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	in_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC;
	ula_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ula
	PORT MAP (
-- list connections between master ports and signals
	in_a => in_a,
	in_b => in_b,
	sel => sel,
	ula_out => ula_out
	);
END ula_arch;
