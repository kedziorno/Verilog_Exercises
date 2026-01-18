--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:21:01 01/18/2026
-- Design Name:   
-- Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_barrel_shifter.vhd
-- Project Name:  pong_p_chu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: barrel_shifter
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

ENTITY tb_barrel_shifter IS
END tb_barrel_shifter;

ARCHITECTURE behavior OF tb_barrel_shifter IS 

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT barrel_shifter
PORT(
iii : IN  std_logic_vector(7 downto 0);
ooo : OUT  std_logic_vector(7 downto 0);
sel : IN  std_logic_vector(2 downto 0)
);
END COMPONENT;


--Inputs
signal iii : std_logic_vector(7 downto 0) := (others => '0');
signal sel : std_logic_vector(2 downto 0) := (others => '0');

--Outputs
signal ooo : std_logic_vector(7 downto 0);
-- No clocks detected in port list. Replace <clock> below with 
-- appropriate port name 


BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: barrel_shifter PORT MAP (
iii => iii,
ooo => ooo,
sel => sel
);



-- Stimulus process
stim_proc: process
begin		
-- hold reset state for 100 ns.
wait for 100 ns;	
-- insert stimulus here 
--iii <= "01000101";
--iii <= "01111110";
--iii <= "11111111";
--iii <= "00000001";
iii <= "00000101";
sel <= "000"; wait for 100 ns;
sel <= "001"; wait for 100 ns;
sel <= "010"; wait for 100 ns;
sel <= "011"; wait for 100 ns;
sel <= "100"; wait for 100 ns;
sel <= "101"; wait for 100 ns;
sel <= "110"; wait for 100 ns;
sel <= "111"; wait for 100 ns;
iii <= "10100000";
sel <= "111"; wait for 100 ns;
sel <= "110"; wait for 100 ns;
sel <= "101"; wait for 100 ns;
sel <= "100"; wait for 100 ns;
sel <= "011"; wait for 100 ns;
sel <= "010"; wait for 100 ns;
sel <= "001"; wait for 100 ns;
sel <= "000"; wait for 100 ns;
iii <= "10100000";
sel <= "000"; wait for 100 ns;
sel <= "001"; wait for 100 ns;
sel <= "010"; wait for 100 ns;
sel <= "011"; wait for 100 ns;
sel <= "100"; wait for 100 ns;
sel <= "101"; wait for 100 ns;
sel <= "110"; wait for 100 ns;
sel <= "111"; wait for 100 ns;
iii <= "00000101";
sel <= "111"; wait for 100 ns;
sel <= "110"; wait for 100 ns;
sel <= "101"; wait for 100 ns;
sel <= "100"; wait for 100 ns;
sel <= "011"; wait for 100 ns;
sel <= "010"; wait for 100 ns;
sel <= "001"; wait for 100 ns;
sel <= "000"; wait for 100 ns;
report "tb done" severity failure;
wait;
end process;

END;
