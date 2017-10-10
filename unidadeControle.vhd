library ieee;
use ieee.std_logic_1164.all;

entity unidadeControle is
	
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
	
end entity;

architecture rtl of unidadeControle is
begin

	process(IN_R0, IN_R1, IN_R2, IN_R3, IN_R4, IN_R5, IN_DEMUX_SEL)
	begin
	
	
	if(IN_R0 = "1001") then
		SEL_MUX_DEMUX <= "001";
		REG_ENABLE <= "000010";
		REG_RESET <= "000001";
		
		if(IN_R1 = "0101") then
			SEL_MUX_DEMUX <= "010";
			REG_RESET <= "000011";
			REG_ENABLE <= "000100";
			
			if(IN_R2 = "1001") then
				SEL_MUX_DEMUX <= "011";
				REG_RESET <= "000111";
				REG_ENABLE <= "001000";
				
				if(IN_R3 = "0101") then
					SEL_MUX_DEMUX <= "100";
					REG_RESET <= "001111";
					REG_ENABLE <= "010000";
					
					if(IN_R4 = "1001") then
						SEL_MUX_DEMUX <= "101";
						REG_RESET <= "011111";
						REG_ENABLE <= "100000";
						
					elsif (IN_R4 >= "0011") then
						if (IN_R5 >= "0010") then
						   REG_RESET <= "111111";
							REG_ENABLE <= "000001";
						end if;
							
					end if;
				end if;
			end if;
		end if;
	else
		SEL_MUX_DEMUX <= "000";
		REG_RESET <= "000000";
		REG_ENABLE <= "000001";
	end if;
								  
	SEL_ULA <= '0';
	
	if (IN_FSM_STATE = "01") then
		MUX_SPEED <= '0';
	elsif (IN_FSM_STATE = "00") then
		MUX_SPEED <= '1';
		
	elsif (IN_FSM_STATE = "10") then
	
		if (IN_KEY(0) = '0') then
			if(IN_R2 < "1001") then
				MUX_SPEED <= '1';
				SEL_MUX_DEMUX <= "010";
				REG_ENABLE <= "000100";
			end if;
		end if;
		if (IN_KEY(1) = '0') then
			if(IN_R2 > "0000") then
				MUX_SPEED <= '1';
				SEL_ULA <='1';
				SEL_MUX_DEMUX <= "010";
				REG_ENABLE <= "000100";	
			end if;
		end if;
		if (IN_KEY(2) = '0') then
			if(IN_R3 < "0101") then
				MUX_SPEED <= '1';
				SEL_MUX_DEMUX <= "011";
				REG_ENABLE <= "001000";
			end if;
		end if;
		if (IN_KEY(3) = '0') then
			if(IN_R3 > "0000") then
				MUX_SPEED <= '1';
				SEL_ULA <='1';
				SEL_MUX_DEMUX <= "011";
				REG_ENABLE <= "001000";	
			end if;
		end if;
	
	
	
	elsif (IN_FSM_STATE = "11") then
	
		if (IN_KEY(0) = '0') then
			if(IN_R4 < "1001") then
				MUX_SPEED <= '1';
				SEL_MUX_DEMUX <= "100";
				REG_ENABLE <= "010000";
			end if;
		end if;
		if (IN_KEY(1) = '0') then
			if(IN_R4 > "0000") then
				MUX_SPEED <= '1';
				SEL_ULA <='1';
				SEL_MUX_DEMUX <= "100";
				REG_ENABLE <= "010000";	
			end if;
		end if;
		if (IN_KEY(2) = '0') then
			if(IN_R5 < "0010") then
				MUX_SPEED <= '1';
				SEL_MUX_DEMUX <= "101";
				REG_ENABLE <= "100000";
			end if;
		end if;
		if (IN_KEY(3) = '0') then
			if(IN_R5 > "0000") then
				MUX_SPEED <= '1';
				SEL_ULA <='1';
				SEL_MUX_DEMUX <= "101";
				REG_ENABLE <= "100000";	
			end if;
		end if;
	
	
	
	end if;
	
	
					 
	end process;
					

end architecture;
                    