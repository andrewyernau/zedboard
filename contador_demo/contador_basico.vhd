----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:18:33 03/04/2025 
-- Design Name: 
-- Module Name:    contador_basico - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity contador_basico is
	 Generic ( N : positive :=8);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  enable : in STD_LOGIC;
			  reset_sinc : in STD_LOGIC;
           cuenta : out  STD_LOGIC_VECTOR (N-1 downto 0);
			  limite : in STD_LOGIC_VECTOR (N-1 downto 0);
           salida : out  STD_LOGIC);
end contador_basico;

architecture Behavioral of contador_basico is

	signal contador : unsigned(N-1 downto 0);
begin
	
	process(clk,reset)
		begin
			if (reset = '1') then
				contador <= (others => '0');
			elsif (clk'event and clk = '1') then
				if (enable = '1') then
					if (reset_sinc = '1' or contador = unsigned(limite)) then
						contador <= (others => '0');
					else
						contador <= contador + 1;
					end if;
				end if;
			end if;
		end process;

	cuenta <= std_logic_vector(contador);
	
	process(contador,limite)
		begin
			if (contador = unsigned(limite)) then
				salida <= '1';
			else
				salida <= '0';
			end if;
		end process;
end Behavioral;

