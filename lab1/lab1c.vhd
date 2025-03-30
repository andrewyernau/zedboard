----------------------------------------------------------------------------------

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

entity lab1c is
    Port (
				clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				sinc_h	: out  STD_LOGIC;
				sinc_v	: out  STD_LOGIC;
				rgb_out : out  STD_LOGIC_VECTOR (11 downto 0);
				rgb_in : in  STD_LOGIC_VECTOR (11 downto 0)
				
			 );
end lab1c;

architecture Behavioral of lab1c is
	signal pixel_cont_top : unsigned(9 downto 0);
	signal linea_cont_top : unsigned(9 downto 0);
	signal enable_slow : std_logic;
	signal inhibicion_color_top : std_logic;
	component clock_divider is
		Port (
					reset : in STD_LOGIC;
					clk_100Mhz : in STD_LOGIC;
					enable_25Mhz : out STD_LOGIC
				);
	end component;
	
	component vga is
		Port (
				reset : in STD_LOGIC;
				clk_100Mhz : in STD_LOGIC;
				enable_25Mhz : in STD_LOGIC;
				sinc_h	: out  STD_LOGIC;
				sinc_v	: out  STD_LOGIC;
				pixel_cont : out  unsigned (9 downto 0);
				linea_cont : out unsigned (9 downto 0);
				inhibicion_color	: out  STD_LOGIC
				);
	end component;
begin
	modulo1_reloj : clock_divider
		Port Map	(
						reset					=>	reset,
						clk_100Mhz			=>	clk,
						enable_25Mhz		=> enable_slow
					);
			
	modulo2_vga : vga
		Port Map (
						reset					=>	reset,
						clk_100Mhz			=>	clk,
						sinc_h				=> sinc_h,
						sinc_v				=> sinc_v,
						pixel_cont			=> pixel_cont_top,
						linea_cont			=>	linea_cont_top,
						inhibicion_color	=> inhibicion_color_top,
						enable_25Mhz		=> enable_slow
					);
	process(clk)
		begin
			if(clk'event and clk ='1') then --NO VA BIEN DEL TODO
				if(enable_slow = '1') then
					if(inhibicion_color_top = '1') then
						rgb_out <= (others => '0');
					else
						if(pixel_cont_top = 20 and linea_cont_top = 20)then
							rgb_out <= "111100000000"; --rojo
						elsif(pixel_cont_top = 100 and linea_cont_top = 20)then
							rgb_out <= "000011110000"; --verde
						elsif(pixel_cont_top = 20 and linea_cont_top = 100)then
							rgb_out <= "000000001111"; --azul
						elsif(pixel_cont_top = 100 and linea_cont_top = 100)then
							rgb_out <= "111111110000"; --amarillo
						elsif(linea_cont_top = 300)then
							rgb_out <= "111111111111"; --blanco
						elsif(pixel_cont_top = 400)then
							rgb_out <= "111111111001"; --naranja
						end if;
					end if;
				end if;
			end if;
		end process;
end Behavioral;

