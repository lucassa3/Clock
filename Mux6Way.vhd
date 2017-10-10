library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux6Way is
	
	generic (
		bits	: integer := 4
	);
	
	port ( 
		IN0, IN1, IN2, IN3, IN4, IN5 : in std_logic_vector(bits - 1 downto 0);
		SEL  : in std_logic_vector(2 downto 0);
		OUT0 : out std_logic_vector(bits - 1 downto 0)	
	);
	
end entity;

architecture rtl of Mux6Way is
begin
	process(IN0,IN1,IN2,IN3,IN4,IN5,SEL)
	begin
		case SEL is
			when "000" => OUT0 <= IN0;
			when "001" => OUT0 <= IN1;
			when "010" => OUT0 <= IN2;
			when "011" => OUT0 <= IN3;
			when "100" => OUT0 <= IN4;
			when others => OUT0 <= IN5; 
		end case; 
	end process;
end architecture;