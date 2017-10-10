library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Demux6Way is

generic(

	bits	:	integer := 4
	
	);

port(

	dmux_in : in std_logic_vector(bits-1 downto 0);
	s0, s1, s2: in std_logic;
	a, b, c, d, e, f: out std_logic_vector(bits-1 downto 0)

 );

end entity;

 

architecture rtl of Demux6Way is
begin

	process (dmux_in,s0,s1,s2) is
	begin

		if (s0 ='0' and s1 = '0' and s2 = '0') then
			a <= dmux_in;
		
		elsif (s0 ='0' and s1 = '0' and s2 = '1') then
			b <= dmux_in;
			
		elsif (s0 ='0' and s1 = '1' and s2 = '0') then
			c <= dmux_in;
			
		elsif (s0 ='0' and s1 = '1' and s2 = '1') then
			d <= dmux_in;
		
		elsif (s0 ='1' and s1 = '0' and s2 = '0') then
			e <= dmux_in;
			
		elsif (s0 ='1' and s1 = '0' and s2 = '1') then
			f <= dmux_in;

		end if;

	end process;

end architecture;
