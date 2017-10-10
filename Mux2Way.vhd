library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- use that, it's a better coding guideline

entity Mux2Way is
	
  generic (
	 bits	:	integer := 4
	);
	
	port ( 
		IN0, IN1 : in std_logic;
	  SEL  : in std_logic;
	  OUT0 : out std_logic	
	);
	
end entity;

architecture rtl of Mux2Way is
begin
	OUT0 <= IN0 when (SEL = '1') else IN1;
end architecture;