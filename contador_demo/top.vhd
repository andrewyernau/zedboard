----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:31:08 03/04/2025 
-- Design Name: 
-- Module Name:    top - Behavioral 
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


entity top is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           salida1 : out  STD_LOGIC;
			  salida2 : out  STD_LOGIC);
end top;

architecture Behavioral of top is

component contador_basico is
	 Generic ( N : positive :=8);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  enable : in STD_LOGIC;
			  reset_sinc : in STD_LOGIC;
			  limite : in STD_LOGIC_VECTOR (N-1 downto 0);
           cuenta : out  STD_LOGIC_VECTOR (N-1 downto 0);
           salida : out  STD_LOGIC);
end component;
	signal enable_modulo2 : std_logic;
begin
	
	modulo1_contador_basico : contador_basico
		Generic Map ( N => 4 )
		Port Map (
						clk			=>clk,
						reset 		=>reset,
						enable		=>'1',
						reset_sinc 	=>'0',
						limite		=>"1110",
--						cuenta 		
						salida 		=>enable_modulo2
					);
				salida1<=enable_modulo2;
		modulo2_contador_basico : contador_basico
		Generic Map ( N => 10 )
		Port Map (
						clk			=>clk,
						reset 		=>reset,
						enable		=>enable_modulo2,
						reset_sinc 	=>'0',
						limite		=>"1000000000",
--						cuenta 		
						salida 		=>salida2
					);
	
end Behavioral;

