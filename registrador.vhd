library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity registrador is
generic(

	bits	:	integer := 4
	);
	
port ( 
	d			     : in std_logic_vector(bits-1 downto 0);
	clk		     : in std_logic;
	reset		     : in std_logic;
	enable	     : in std_logic;
	async_value : in std_logic;
	q			     : out std_logic_vector(bits-1 downto 0)
	);
	
end registrador;



architecture rtl of registrador is
signal temp : std_logic_vector(3 downto 0);

begin
process (async_value, clk, reset)
begin
	
	if (async_value = '1') then
		q <= "0001";
	-- Reset whenever the reset signal goes low, regardless of the clock
	-- If not resetting, update the register output on the clock's rising edge
	elsif (rising_edge(clk)) then
		if (reset = '1') then
			q <= (others => '0');
			temp <= (others => '0');
		elsif (enable = '1') then
			q <= d;
			temp <= d;
		end if;
	end if;
end process;
end rtl;