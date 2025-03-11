--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:35:01 03/11/2025
-- Design Name:   
-- Module Name:   E:/Universidad/Telematica/4o/SOCS-FPGAS/lab2/lab2_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab2
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
 
ENTITY lab2_tb IS
END lab2_tb;
 
ARCHITECTURE behavior OF lab2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab2
    PORT(
         clk : IN  std_logic;
         reset : OUT  std_logic;
         rel_1 : OUT  std_logic;
         rel_2 : OUT  std_logic;
         rel_3 : OUT  std_logic;
         rel_4 : OUT  std_logic;
         rel_5 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal reset : std_logic;
   signal rel_1 : std_logic;
   signal rel_2 : std_logic;
   signal rel_3 : std_logic;
   signal rel_4 : std_logic;
   signal rel_5 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab2 PORT MAP (
          clk => clk,
          reset => reset,
          rel_1 => rel_1,
          rel_2 => rel_2,
          rel_3 => rel_3,
          rel_4 => rel_4,
          rel_5 => rel_5
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
