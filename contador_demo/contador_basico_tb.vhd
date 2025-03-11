--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:26:51 03/04/2025
-- Design Name:   
-- Module Name:   E:/Universidad/Telematica/4o/SOCS-FPGAS/contador_demo/contador_basico_tb.vhd
-- Project Name:  contador_demo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contador_basico
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
 
ENTITY contador_basico_tb IS
END contador_basico_tb;
 
ARCHITECTURE behavior OF contador_basico_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contador_basico
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         enable : IN  std_logic;
         reset_sinc : IN  std_logic;
         load : IN  std_logic;
         cuenta : OUT  std_logic_vector(7 downto 0);
         salida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal enable : std_logic := '0';
   signal reset_sinc : std_logic := '0';
   signal load : std_logic := '0';

 	--Outputs
   signal cuenta : std_logic_vector(7 downto 0);
   signal salida : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador_basico PORT MAP (
          clk => clk,
          reset => reset,
          enable => enable,
          reset_sinc => reset_sinc,
          load => load,
          cuenta => cuenta,
          salida => salida
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
      reset <= '1';
		enable <= '0';
		reset_sinc <= '0';
		wait for 333 ns;
		
		reset <= '0';
		wait for 1 us;
		
		enable <= '1';

      wait;
   end process;

END;
