-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;

entity clockDivisor is
  port (
  
    clk_50Mhz : in  std_logic;
    reset       : in  std_logic;
    clk_1Hz   : out std_logic
	 
	 );
end entity;

architecture rtl of clockDivisor is
	signal soma : unsigned(24 downto 0);
	begin

	process (clk_50Mhz, rst)
	begin  -- process gen_clk

		soma <= soma + "1";
		if (soma < "1011111010111100001000000") then
			clk_1hz <= "0";
		elsif (soma > "1011111010111100001000000") then
			clk_1hz <= "1";
		elsif (soma = "10111110101111000010000000") then
			soma <= (others => '0');
		 
	end process;

end architecture;