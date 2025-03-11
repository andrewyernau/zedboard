
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity lab2 is
	Port (clk: in STD_LOGIC;
		reset: in STD_LOGIC;
		rel_1: out STD_LOGIC;
		rel_2: out STD_LOGIC;
		rel_3: out STD_LOGIC;
		rel_4: out STD_LOGIC;
		rel_5: out STD_LOGIC);
end lab2;

architecture Behavioral of lab2 is
	signal clkin : std_logic;
		
	signal ibuf_out : std_logic;
	signal buff_in1 : std_logic;
	signal buff_in2 : std_logic;
	signal buff_in3 : std_logic;
	signal buff_in4 : std_logic;
	signal buff_in5 : std_logic;
	
	signal buff_fb	 : std_logic;
	signal buff_fb_in	 : std_logic;
begin
	   MMCME2_BASE_inst : MMCME2_BASE
   generic map (
      BANDWIDTH => "OPTIMIZED",		
		
		
      CLKFBOUT_MULT_F => 6.0,   -- 100Mhz->600Mhz
		
		
      CLKFBOUT_PHASE => 0.0,     
      CLKIN1_PERIOD => 10.0,	-- ns
      
      CLKOUT1_DIVIDE => 5,			-- buff_in2 ->120Mhz
      CLKOUT2_DIVIDE => 6,			-- buff_in3 ->100Mhz
      CLKOUT3_DIVIDE => 10,		-- buff_in4 ->60Mhz
      CLKOUT4_DIVIDE => 24,		-- buff_in5 ->25Mhz
		
      CLKOUT0_DIVIDE_F => 3.75,  -- buff_in1 ->160Mhz




      CLKOUT0_DUTY_CYCLE => 0.5,
      CLKOUT1_DUTY_CYCLE => 0.5,
      CLKOUT2_DUTY_CYCLE => 0.5,
      CLKOUT3_DUTY_CYCLE => 0.5,
      CLKOUT4_DUTY_CYCLE => 0.5,
      CLKOUT5_DUTY_CYCLE => 0.5,
      CLKOUT6_DUTY_CYCLE => 0.5,



      CLKOUT0_PHASE => 0.0,
      CLKOUT1_PHASE => 0.0,
      CLKOUT2_PHASE => 0.0,
      CLKOUT3_PHASE => 0.0,
      CLKOUT4_PHASE => 0.0,
      CLKOUT5_PHASE => 0.0,
      CLKOUT6_PHASE => 0.0,
      CLKOUT4_CASCADE => FALSE, 
		
		 
      DIVCLK_DIVIDE => 1,        
		
		
      REF_JITTER1 => 0.0,        
      STARTUP_WAIT => FALSE      
   )
   port map (
      
      CLKOUT0 => buff_in1,			-- 160Mhz
      CLKOUT1 => buff_in2,			-- 120Mhz    
      CLKOUT2 => buff_in3,			-- 100Mhz
		CLKOUT3 => buff_in4,			-- 60Mhz
      CLKOUT4 => buff_in5,			-- 25Mhz

      CLKFBOUT => buff_fb_in,   

      CLKIN1 => clkin,       
      PWRDWN => '0',       
      RST => reset,             
      
      CLKFBIN => buff_fb      
   );
	
	
	
   IBUFG_inst1 : IBUFG
   port map (
      O => clkin, 
      I => clk  
   );
	
	
	BUFG_inst2 : BUFG	--160Mhz
   port map (
      O => rel_1, 
      I => buff_in1 
   );
	BUFG_inst3 : BUFG	--120Mhz
   port map (
      O => rel_2, 
      I => buff_in2  
   );
	BUFG_inst4 : BUFG	--100Mhz
   port map (
      O => rel_3, 
      I => buff_in3  
   );
	BUFG_inst5 : BUFG	--60Mhz
   port map (
      O => rel_4, 
      I => buff_in4  
   );
	BUFG_inst6 : BUFG	--25Mhz
   port map (
      O => rel_5, 
      I => buff_in5  
   );
	
	BUFG_inst7 : BUFG
   port map (
      O => buff_fb, 
      I => buff_fb_in  
   );
end Behavioral;

