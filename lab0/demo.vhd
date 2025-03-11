----------------------------------------------------------------------------------
-- Company: UPCT
-- Engineer: 
-- 
-- Create Date:    11:50:40 02/11/2025 
-- Design Name: 
-- Module Name:    demo - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demo is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end demo;

architecture Behavioral of demo is
	SIGNAL count_aux: unsigned(7 downto 0);
begin
	
		process(reset,clk)
			begin
				if reset = '1' then
					count_aux <= (others => '0');
				elsif clk'EVENT and clk = '1' then
					count_aux <= count_aux + 1;
				end if;
			end process;
	data_out <= std_logic_vector(count_aux);	
end Behavioral;

