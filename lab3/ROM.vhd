----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
USE IEEE.std_logic_unsigned.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity ROM is
	port(
		clk : in std_logic;
		enable : in std_logic;
		ADDR : in std_logic_vector(6 downto 0);
		DATA : out std_logic_vector(11 downto 0));
end ROM;

architecture Behavioral of ROM is

type rom_type is array (80 downto 0) of std_logic_vector (11 downto 0);
--		constant ROM:rom_type:=(
--						X"F0F",X"000",X"000",X"000",X"000",X"000",X"000",X"000",X"F0F",
--						X"000",X"F0F",X"000",X"000",X"000",X"000",X"000",X"F0F",X"000",
--						X"000",X"000",X"F0F",X"000",X"000",X"000",X"F0F",X"000",X"000",
--						X"000",X"000",X"000",X"F0F",X"000",X"F0F",X"000",X"000",X"000",
--						X"000",X"000",X"000",X"000",X"F0F",X"000",X"000",X"000",X"000",
--						X"000",X"000",X"000",X"F0F",X"000",X"F0F",X"000",X"000",X"000",
--						X"000",X"000",X"F0F",X"000",X"000",X"000",X"F0F",X"000",X"000",
--						X"000",X"F0F",X"000",X"000",X"000",X"000",X"000",X"F0F",X"000",
--						X"F0F",X"000",X"000",X"000",X"000",X"000",X"000",X"000",X"F0F"
--						);
						
		constant ROM:rom_type:=(
						X"111",X"222",X"333",X"444",X"555",X"666",X"777",X"888",X"999",
						X"000",X"F0F",X"000",X"000",X"000",X"000",X"000",X"F0F",X"000",
						X"000",X"000",X"F0F",X"000",X"000",X"000",X"F0F",X"000",X"000",
						X"000",X"000",X"000",X"F0F",X"000",X"F0F",X"000",X"000",X"000",
						X"000",X"000",X"000",X"000",X"F0F",X"000",X"000",X"000",X"000",
						X"000",X"000",X"000",X"F0F",X"000",X"F0F",X"000",X"000",X"000",
						X"000",X"000",X"F0F",X"000",X"000",X"000",X"F0F",X"000",X"000",
						X"000",X"F0F",X"000",X"000",X"000",X"000",X"000",X"F0F",X"000",
						X"999",X"888",X"777",X"666",X"555",X"444",X"333",X"222",X"111"
						);
begin
	process (clk)
		begin if (clk'event and clk = '1') then
			if (enable = '1') then
				DATA <= ROM(conv_integer(ADDR));
			end if;
		end if; 
	end process;

end Behavioral;

