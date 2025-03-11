----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity clock_divider is
	Port (
				reset : in STD_LOGIC;
				clk_100Mhz : in STD_LOGIC;
				enable_25Mhz : out STD_LOGIC
			);
end clock_divider;

architecture Behavioral of clock_divider is

	signal cont : unsigned(1 downto 0);
	signal enable : std_logic;
	
	constant DIV_RELOJ: integer :=3;
	
begin

	contador_cuatro:process(reset,clk_100Mhz) --clock divider 1:4
		begin
			if(reset='1') then
				enable <= '0';
				cont <= (others =>'0');
			elsif(clk_100Mhz'event and clk_100Mhz = '1')then
				if(cont = DIV_RELOJ) then
					cont <= (others =>'0');
					enable <='1';
				else
					enable <='0';
					cont <= cont + 1;
				end if;
			end if;
		end process;
	enable_25Mhz<= enable;
end Behavioral;

