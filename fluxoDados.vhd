library ieee;
use ieee.std_logic_1164.all;

entity fluxoDados is
	
	port ( 
		TEMP : in std_logic;
		SEL_MUX_DEMUX :	in std_logic_vector(2 downto 0);
		SEL_ULA      :	in std_logic;
		REG_ENABLE   : in std_logic_vector(5 downto 0);
		REG_RESET    : in std_logic_vector(5 downto 0);
		CLK : in std_logic;
		OUT_R0, OUT_R1, OUT_R2, OUT_R3, OUT_R4, OUT_R5 : out std_logic_vector(3 downto 0);
		OUT_DEMUX_SEL : out std_logic_vector(2 downto 0)
	);
	
end entity;

architecture rtl of fluxoDados is

	component Mux6Way is
		generic (
			bits : integer := 4
		);
		
		port (
			IN0, IN1, IN2, IN3, IN4, IN5 : in std_logic_vector(bits - 1 downto 0);
			SEL  : in std_logic_vector(2 downto 0);
			OUT0 : out std_logic_vector(bits - 1 downto 0)
		); 
	end component;
	
	component ula is
		generic (
			bits : integer := 4
		);
	
		port ( 
			in_a, in_b : in std_logic_vector(bits-1 downto 0);
			sel : in std_logic;
			ula_out : out std_logic_vector(bits-1 downto 0)
		);
	end component;
	
	component registrador is
		generic(
			bits : integer := 4
		);
	
		port( 
			d			:	in std_logic_vector(bits-1 downto 0);
			clk		:	in std_logic;
			reset		:	in std_logic;
			enable	:	in std_logic;
			async_value : in std_logic;
			q			:	out std_logic_vector(bits-1 downto 0)
		);
	end component;
	
	signal R0_IN, R1_IN, R2_IN, R3_IN, R4_IN, R5_IN : std_logic_vector(3 downto 0) := (others => '0');
	signal R0_OUT, R1_OUT, R2_OUT, R3_OUT, R4_OUT, R5_OUT : std_logic_vector(3 downto 0) := (others => '0');
	signal OUT0_MUX6WAY : std_logic_vector(3 downto 0) := (others => '0');
	signal ULA_OUT : std_logic_vector(3 downto 0) := (others => '0');
	signal ONE : std_logic_vector(3 downto 0) := "0001";
	signal SIG_REG_RESET : std_logic_vector(6 downto 0) := "0000000";

begin
	
	R0      : registrador port map (ULA_OUT, CLK, REG_RESET(0), REG_ENABLE(0), '0', R0_OUT);
	R1      : registrador port map (ULA_OUT, CLK, REG_RESET(1), REG_ENABLE(1), '0', R1_OUT);
	R2      : registrador port map (ULA_OUT, CLK, REG_RESET(2), REG_ENABLE(2), TEMP, R2_OUT);
	R3      : registrador port map (ULA_OUT, CLK, REG_RESET(3), REG_ENABLE(3), '0', R3_OUT);
	R4      : registrador port map (ULA_OUT, CLK, REG_RESET(4), REG_ENABLE(4), '0', R4_OUT);
	R5      : registrador port map (ULA_OUT, CLK, REG_RESET(5), REG_ENABLE(5), '0', R5_OUT);
	MUX6WAY0 : Mux6Way port map (R0_OUT, R1_OUT, R2_OUT, R3_OUT, R4_OUT, R5_OUT, SEL_MUX_DEMUX, OUT0_MUX6WAY);
	ULA0     : ula port map (OUT0_MUX6WAY, ONE, SEL_ULA, ULA_OUT);
	
	OUT_R0 <= R0_OUT;
	OUT_R1 <= R1_OUT;
	OUT_R2 <= R2_OUT;
	OUT_R3 <= R3_OUT;
	OUT_R4 <= R4_OUT;
	OUT_R5 <= R5_OUT;
	OUT_DEMUX_SEL <= SEL_MUX_DEMUX;

end architecture;
