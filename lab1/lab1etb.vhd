--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:38:00 03/18/2025
-- Design Name:   
-- Module Name:   E:/Universidad/Telematica/4o/SOCS-FPGAS/lab1/lab1etb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab1e
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
 
ENTITY lab1etb IS
END lab1etb;
 
ARCHITECTURE behavior OF lab1etb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab1e
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         sinc_h : OUT  std_logic;
         sinc_v : OUT  std_logic;
         rgb_out : OUT  std_logic_vector(11 downto 0);
         rgb_in : IN  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal rgb_in : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal sinc_h : std_logic;
   signal sinc_v : std_logic;
   signal rgb_out : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab1e PORT MAP (
          clk => clk,
          reset => reset,
          sinc_h => sinc_h,
          sinc_v => sinc_v,
          rgb_out => rgb_out,
          rgb_in => rgb_in
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
