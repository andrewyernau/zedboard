----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity lab1e is
    Port (
				clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				sinc_h	: out  STD_LOGIC;
				sinc_v	: out  STD_LOGIC;
				rgb_out : out  STD_LOGIC_VECTOR (11 downto 0);
				rgb_in : in  STD_LOGIC_VECTOR (11 downto 0)
				
			 );
end lab1e;
architecture Behavioral of lab1e is

signal pixel_cont_top : unsigned(9 downto 0);
signal linea_cont_top : unsigned(9 downto 0);
signal inhibicion_color_top : std_logic;
signal enable_25 : std_logic;


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
	
begin

	modulo2_vga : vga
		Port Map (
						reset				=>	reset,
						sinc_h				=> sinc_h,
						sinc_v				=> sinc_v,
						pixel_cont			=> pixel_cont_top,
						linea_cont			=>	linea_cont_top,
						inhibicion_color	=> inhibicion_color_top,
						enable_25Mhz		=> enable_25
					);
					
	modulo_reloj : mmcme2
		Port Map (
						reset				=>	reset,
						clk					=> clk,
						rel_5				=> enable_25
		);
					
process(enable_25)
	begin
		if(enable_25'event and enable_25 ='1') then
			if(inhibicion_color_top = '0') then -- Zona activa
				if (pixel_cont_top = 0   and linea_cont_top = 0)   then  -- (0,0)
					rgb_out <= "111111111111";  -- Blanco
				elsif (pixel_cont_top = 639 and linea_cont_top = 0)   then  -- (639,0)
					rgb_out <= "111111111111"; 
				elsif (pixel_cont_top = 0   and linea_cont_top = 479) then  -- (0,479)
					rgb_out <= "111111111111"; 
				elsif (pixel_cont_top = 639 and linea_cont_top = 479) then  -- (639,479)
					rgb_out <= "111111111111"; 
				elsif(pixel_cont_top = 20 and linea_cont_top = 20) then
					rgb_out <= "111100000000"; -- Rojo
				elsif(pixel_cont_top = 100 and linea_cont_top = 20) then
					rgb_out <= "000011110000"; -- Verde
				elsif(pixel_cont_top = 20 and linea_cont_top = 100) then
					rgb_out <= "000000001111"; -- Azul
				elsif(pixel_cont_top = 100 and linea_cont_top = 100) then
					rgb_out <= "111111110000"; -- Amarillo
				elsif(pixel_cont_top = 400) then -- Columna 400
					rgb_out <= "111110100000"; -- Naranja
				elsif(linea_cont_top = 300) then -- Fila 300
					rgb_out <= "111111111111"; -- Blanco
				else
					rgb_out <= rgb_in; -- Color por defecto
				end if;
			else
				rgb_out <= (others => '0');
			end if;
		end if;
end process;


end Behavioral;

