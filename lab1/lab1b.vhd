--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:33:23 02/25/2025
-- Design Name:   
-- Module Name:   E:/Universidad/Telematica/4o/SOCS-FPGAS/lab2/lab1b.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY lab1b IS
END lab1b;
 
ARCHITECTURE behavior OF lab1b IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab
    PORT(
         clk_100Mhz : IN  std_logic;
         reset : IN  std_logic;
         rgb_in : IN  std_logic_vector(11 downto 0);
         rgb_out : OUT  std_logic_vector(11 downto 0);
         sinc_h : OUT  std_logic;
         sinc_v : OUT  std_logic;
         data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_100Mhz : std_logic := '0';
   signal reset : std_logic := '0';
   signal rgb_in : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal rgb_out : std_logic_vector(11 downto 0);
   signal sinc_h : std_logic;
   signal sinc_v : std_logic;
   signal data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_100Mhz_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab PORT MAP (
          clk_100Mhz => clk_100Mhz,
          reset => reset,
          rgb_in => rgb_in,
          rgb_out => rgb_out,
          sinc_h => sinc_h,
          sinc_v => sinc_v,
          data_out => data_out
        );

   -- Clock process definitions
   clk_100Mhz_process :process
   begin
		clk_100Mhz <= '0';
		wait for clk_100Mhz_period/2;
		clk_100Mhz <= '1';
		wait for clk_100Mhz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1';
		wait for 100 ns;
		reset <= '0';
		wait for 100 ns;
		rgb_in <= "010110101011";
      -- insert stimulus here 

      wait;
   end process;

END;
