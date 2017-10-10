library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
    port (
        -- Entradas (nomenclatura definida no arquivo ¨.qsf¨)
        CLOCK_50 : in STD_LOGIC;
        KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);   --chaves de contato momentaneo.
--      SW: in STD_LOGIC_VECTOR(17 DOWNTO 0);    --chaves liga/desliga.

        -- Saidas da placa (nomenclatura definida no arquivo ¨.qsf¨)
        LEDR : out STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
        LEDG : out STD_LOGIC_VECTOR(8 DOWNTO 0)  := (others => '0');
        HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
end entity;

architecture rtl of TopLevel is

component fluxoDados is
	generic(
		bits	:	integer := 8
	);
	
	port ( 
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
		SEL_MUX_DEMUX :out std_logic_vector(2 downto 0);
		SEL_ULA      :	out std_logic;
		REG_ENABLE   : out std_logic_vector(5 downto 0);
		REG_RESET    : out std_logic_vector(5 downto 0)
	);
	
end component;


begin

