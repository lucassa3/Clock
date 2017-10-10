library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TopLevel is
    port (
        CLOCK_50 : in STD_LOGIC;
		  
		  KEY : in std_logic_vector(3 downto 0);
		  SW : in std_logic_vector(17 downto 0);
		  

        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
end entity;

architecture rtl of TopLevel is

	component fluxoDados is
		
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
	end component;

	component unidadeControle is	
		port (
			IN_R0, IN_R1, IN_R2, IN_R3, IN_R4, IN_R5 : in std_logic_vector(3 downto 0);
			IN_DEMUX_SEL : in std_logic_vector(2 downto 0);
			IN_KEY : in std_logic_vector(3 downto 0);
			IN_FSM_STATE : in std_logic_vector(1 downto 0);
			SEL_MUX_DEMUX :out std_logic_vector(2 downto 0);
			SEL_ULA      :	out std_logic;
			REG_ENABLE   : out std_logic_vector(5 downto 0);
			REG_RESET    : out std_logic_vector(5 downto 0);
			MUX_SPEED : out std_logic;
			TEMP : out std_logic
		);	
	end component;

	component clockDivisor is
	  Port (
        clk_in : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        clk_out: out STD_LOGIC
		);
	end component;
	
	component clockDivisorFast is
	  Port (
        clk_in : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        clk_out: out STD_LOGIC
		);
	end component;
	
	component conversorHex7Seg is
    port
    (
        dadoHex : in  std_logic_vector(3 downto 0);
        apaga   : in  std_logic := '0';
        negativo : in  std_logic := '0';
        overFlow : in  std_logic := '0';
        saida7seg : out std_logic_vector(6 downto 0)
    );
	end component;
	
	component Clock is
    port (
        reset : in STD_LOGIC := '0';
        clock : in STD_LOGIC;
        IN_SW0 : in STD_LOGIC := '0';
        IN_SW1 : in STD_LOGIC := '0';
		  IN_SW2 : in STD_LOGIC := '0';
        FSM_OUT : out STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
	end component;
	
	component Mux2Way is
		generic (
			bits	:	integer := 4
		);
		
		port ( 
			IN0, IN1 : in std_logic;
			SEL  : in std_logic;
			OUT0 : out std_logic	
		);
		
	end component;
	
	signal SIG_RESET_CLK, SIG_APAGA, SIG_NEG, SIG_OF : std_logic := '0';
	signal SIG_CLK_1, SIG_SEL_ULA, SIG_CLK_1_FAST : std_logic := '0';
	signal SIG_SEL_MUX_DEMUX, SIG_OUT_DEMUX_SEL : std_logic_vector(2 downto 0) := (others => '0');
	signal SIG_REG_ENABLE : std_logic_vector(5 downto 0) := "000001";
	signal SIG_REG_RESET : std_logic_vector(5 downto 0) := "000000";
	signal SIG_OUT_R0, SIG_OUT_R1, SIG_OUT_R2, SIG_OUT_R3, SIG_OUT_R4, SIG_OUT_R5 : std_logic_vector(3 downto 0) := (others => '0');
	signal HEX0_OUT, HEX1_OUT, HEX2_OUT, HEX3_OUT, HEX4_OUT, HEX5_OUT : std_logic_vector(6 downto 0) := (others => '0');
	signal SIG_FSM_OUT : std_logic_vector(1 downto 0) := (others => '0');
	signal SIG_MUX_SPEED: std_logic := '1';
	signal SIG_MUX_OUT, SIG_TEMP : std_logic := '0';

	begin
		
		CD0 : clockDivisor port map (CLOCK_50, SIG_RESET_CLK, SIG_CLK_1);
		CDF0 : clockDivisorFast port map (CLOCK_50, SIG_RESET_CLK, SIG_CLK_1_FAST);
		MUX0 : Mux2Way port map (SIG_CLK_1, SIG_CLK_1_FAST, SIG_MUX_SPEED, SIG_MUX_OUT);
		CFSM : Clock port map (SIG_APAGA, CLOCK_50, SW(0), SW(1), SW(2), SIG_FSM_OUT);
		FD0 : fluxoDados port map (SIG_TEMP, SIG_SEL_MUX_DEMUX, SIG_SEL_ULA, SIG_REG_ENABLE, SIG_REG_RESET, SIG_MUX_OUT, SIG_OUT_R0, SIG_OUT_R1, SIG_OUT_R2, SIG_OUT_R3, SIG_OUT_R4, SIG_OUT_R5, SIG_OUT_DEMUX_SEL);
		UC0 : unidadeControle port map (SIG_OUT_R0, SIG_OUT_R1, SIG_OUT_R2, SIG_OUT_R3, SIG_OUT_R4, SIG_OUT_R5, SIG_OUT_DEMUX_SEL, KEY, SIG_FSM_OUT, SIG_SEL_MUX_DEMUX, SIG_SEL_ULA, SIG_REG_ENABLE, SIG_REG_RESET, SIG_MUX_SPEED, SIG_TEMP);
		CONV0 : conversorHex7Seg port map (SIG_OUT_R0, SIG_APAGA, SIG_NEG, SIG_OF, HEX0_OUT);
		CONV1 : conversorHex7Seg port map (SIG_OUT_R1, SIG_APAGA, SIG_NEG, SIG_OF, HEX1_OUT);
		CONV2 : conversorHex7Seg port map (SIG_OUT_R2, SIG_APAGA, SIG_NEG, SIG_OF, HEX2_OUT);
		CONV3 : conversorHex7Seg port map (SIG_OUT_R3, SIG_APAGA, SIG_NEG, SIG_OF, HEX3_OUT);
		CONV4 : conversorHex7Seg port map (SIG_OUT_R4, SIG_APAGA, SIG_NEG, SIG_OF, HEX4_OUT);
		CONV5 : conversorHex7Seg port map (SIG_OUT_R5, SIG_APAGA, SIG_NEG, SIG_OF, HEX5_OUT);
		
		HEX0 <= HEX0_OUT;
		HEX1 <= HEX1_OUT;
		HEX2 <= HEX2_OUT;
		HEX3 <= HEX3_OUT;
		HEX4 <= HEX4_OUT;
		HEX5 <= HEX5_OUT;

end architecture;

