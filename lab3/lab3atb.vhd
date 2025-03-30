--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:37:51 03/25/2025
-- Design Name:   
-- Module Name:   E:/Universidad/Telematica/4o/SOCS-FPGAS/lab3/lab3atb.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab3a
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
 
ENTITY lab3atb IS
END lab3atb;
 
ARCHITECTURE behavior OF lab3atb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab3a
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         enable : IN  std_logic;
         sinc_h : OUT  std_logic;
         sinc_v : OUT  std_logic;
--         inhibicion_color : OUT  std_logic;
         rgb_out : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal sinc_h : std_logic;
   signal sinc_v : std_logic;
--   signal inhibicion_color : std_logic;
   signal rgb_out : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab3a PORT MAP (
          clk => clk,
          reset => reset,
          enable => enable,
          sinc_h => sinc_h,
          sinc_v => sinc_v,
--          inhibicion_color => inhibicion_color,
          rgb_out => rgb_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		enable <= '1';
		reset <= '1';   
		wait for clk_period*10;
		
		reset <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
