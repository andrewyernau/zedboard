----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity lab3a is
	Port (
				clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				
				enable : in STD_LOGIC;
				
				sinc_h	: out  STD_LOGIC;
				sinc_v	: out  STD_LOGIC;
				
				--inhibicion_color : out std_logic;
				
				rgb_out : out  STD_LOGIC_VECTOR (11 downto 0)
				--rgb_in : in  STD_LOGIC_VECTOR (11 downto 0)
				
			 );
end lab3a;

architecture Behavioral of lab3a is

signal clkin : std_logic;

signal pixel_cont_top : unsigned(9 downto 0);
signal linea_cont_top : unsigned(9 downto 0);
signal inhibicion_color_top : std_logic;
signal enable_25 : std_logic;

signal pos_x : unsigned(9 downto 0); -- (640 - 9)/2 = 316
signal pos_y : unsigned(9 downto 0); -- (480 - 9)/2 = 235

signal rom_data : std_logic_vector(11 downto 0);
signal address : unsigned(6 downto 0);--128 bits > 81 ROM size
--signal is_true : std_logic;
--signal address_temp : unsigned(7 downto 0);
--signal x_offset : unsigned(3 downto 0); --aunque no hagan falta
--signal y_offset : unsigned(3 downto 0);
--signal contador_81 : unsigned(6 downto 0);
--MODULO VGA

	component vga is
		Port (
				reset : in STD_LOGIC;
				enable_25Mhz : in STD_LOGIC;
				sinc_h	: out  STD_LOGIC;
				sinc_v	: out  STD_LOGIC;
				pixel_cont : out  unsigned (9 downto 0);
				linea_cont : out unsigned (9 downto 0);
				inhibicion_color	: out  STD_LOGIC
				);
	end component;

--MODULO RELOJ
	component mmcme2 is
		Port (clk: in STD_LOGIC;
			reset: in STD_LOGIC;
			rel_5: out STD_LOGIC);
	end component;
	
--MODULO ROM
	component ROM is
		port(
			clk : in std_logic;
			enable : in std_logic;
			ADDR : in std_logic_vector(6 downto 0);
			DATA : out std_logic_vector(11 downto 0));
	end component;
begin


	modulo2_vga : vga
		Port Map (
						reset					=>	reset,
						sinc_h				=> sinc_h,
						sinc_v				=> sinc_v,
						pixel_cont			=> pixel_cont_top,
						linea_cont			=>	linea_cont_top,
						inhibicion_color	=> inhibicion_color_top,
						enable_25Mhz		=> enable_25
					);
					
					
	modulo_reloj : mmcme2
		Port Map (
						reset					=>	reset,
						clk					=> clk,
						rel_5					=> enable_25
		);
		
	modulo_rom : ROM
		Port Map (	
						clk					=>	enable_25,
						enable				=>	enable,
						ADDR					=>	std_logic_vector(address),
						DATA					=>	rom_data
		);
	
process (reset,enable_25) 
	begin 
		if (reset = '1') then
			rgb_out <= (others => '0');
			--x_offset <= (others => '0');
			--y_offset <= (others => '0');
			address <= (others => '0');
			--is_true <= '0';
			pos_x <= "0100111100";
			pos_y <= "0011101011";

		elsif (enable_25'event and enable_25 = '1') then
			if (enable = '1') then
				if (inhibicion_color_top = '1') then
					rgb_out <= (others => '0');
					--x_offset <= (others => '0');
					--y_offset <= (others => '0');
				else

					if (pixel_cont_top >= pos_x and pixel_cont_top <= pos_x + 8) then
						if (linea_cont_top >= pos_y and linea_cont_top <= pos_y + 8) then --dentro de la caja 9x9
							--is_true <= '1';
							--x_offset <= pixel_cont_top(3 downto 0) - pos_x; 
							--y_offset <= linea_cont_top(3 downto 0) - pos_y;
							
							--address_temp <= y_offset * 9 + x_offset;
							--address <= address_temp(6 downto 0);
								rgb_out <= rom_data;
								address <= address + 1;
							if (address >= 80) then
								address <= (others => '0');
							end if;
						else --columna no coincide
							rgb_out <= (others => '0');
							--is_true <= '0';
						end if;
					else --fila no coincide
						rgb_out <= (others => '0');
						--is_true <= '0';
					end if;
				end if;
			else --no esta enable
				rgb_out <= (others => '0');
				address <= (others => '0');
				--is_true <= '0';
			end if;
		end if;
end process;
end Behavioral;

