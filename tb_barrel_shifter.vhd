--------------------------------------------------------------------------------
-- Company:       HomeDL
-- Engineer:      ko
--
-- Create Date:   21:21:01 01/18/2026
-- Design Name:   barrel_shifter
-- Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_barrel_shifter.vhd
-- Project Name:  pong_p_chu
-- Target Device: -
-- Tool versions: -
-- Description:   Test 8-bit Barrel Shifter
--
-- VHDL Test Bench Created by ISE for module: barrel_shifter
--
-- Dependencies: -
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: -
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

ENTITY tb_barrel_shifter_vhdl IS
END tb_barrel_shifter_vhdl;

ARCHITECTURE behavior OF tb_barrel_shifter_vhdl IS

constant n_bit : integer := 3;

-- Component Declaration for the Unit Under Test (UUT)
component barrel_shifter_vhdl is
  generic (n : integer := n_bit);
  port (
    o_order     : out std_logic_vector (2 ** n - 1 downto 0);
    i_order     : in  std_logic_vector (2 ** n - 1 downto 0);
    sel_shl_shr : in  std_logic_vector (n      - 1 downto 0);
    ml_sb_order : in  std_logic
  );
end component barrel_shifter;

--Inputs
signal i_order : std_logic_vector(2 ** n_bit - 1 downto 0) := (others => '0');
signal sel_shl_shr : std_logic_vector(n_bit - 1 downto 0) := (others => '0');
signal ml_sb_order : std_logic := '0';

--Outputs
signal o_order : std_logic_vector(2 ** n_bit - 1 downto 0);

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut : barrel_shifter_vhdl PORT MAP (
o_order => o_order,
i_order => i_order,
sel_shl_shr => sel_shl_shr,
ml_sb_order => ml_sb_order
);

-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
-- insert stimulus here
--i_order <= "01000101";
--i_order <= "01111110";
--i_order <= "11111111";
--i_order <= "00000001";
ml_sb_order <= '1';
i_order <= "00000101";
sel_shl_shr <= "000"; wait for 100 ns;
sel_shl_shr <= "001"; wait for 100 ns;
sel_shl_shr <= "010"; wait for 100 ns;
sel_shl_shr <= "011"; wait for 100 ns;
sel_shl_shr <= "100"; wait for 100 ns;
sel_shl_shr <= "101"; wait for 100 ns;
sel_shl_shr <= "110"; wait for 100 ns;
sel_shl_shr <= "111"; wait for 100 ns;
i_order <= "10100000";
sel_shl_shr <= "111"; wait for 100 ns;
sel_shl_shr <= "110"; wait for 100 ns;
sel_shl_shr <= "101"; wait for 100 ns;
sel_shl_shr <= "100"; wait for 100 ns;
sel_shl_shr <= "011"; wait for 100 ns;
sel_shl_shr <= "010"; wait for 100 ns;
sel_shl_shr <= "001"; wait for 100 ns;
sel_shl_shr <= "000"; wait for 100 ns;
i_order <= "10100000";
sel_shl_shr <= "000"; wait for 100 ns;
sel_shl_shr <= "001"; wait for 100 ns;
sel_shl_shr <= "010"; wait for 100 ns;
sel_shl_shr <= "011"; wait for 100 ns;
sel_shl_shr <= "100"; wait for 100 ns;
sel_shl_shr <= "101"; wait for 100 ns;
sel_shl_shr <= "110"; wait for 100 ns;
sel_shl_shr <= "111"; wait for 100 ns;
i_order <= "00000101";
sel_shl_shr <= "111"; wait for 100 ns;
sel_shl_shr <= "110"; wait for 100 ns;
sel_shl_shr <= "101"; wait for 100 ns;
sel_shl_shr <= "100"; wait for 100 ns;
sel_shl_shr <= "011"; wait for 100 ns;
sel_shl_shr <= "010"; wait for 100 ns;
sel_shl_shr <= "001"; wait for 100 ns;
sel_shl_shr <= "000"; wait for 100 ns;
ml_sb_order <= '0';
i_order <= "00000101";
sel_shl_shr <= "000"; wait for 100 ns;
sel_shl_shr <= "001"; wait for 100 ns;
sel_shl_shr <= "010"; wait for 100 ns;
sel_shl_shr <= "011"; wait for 100 ns;
sel_shl_shr <= "100"; wait for 100 ns;
sel_shl_shr <= "101"; wait for 100 ns;
sel_shl_shr <= "110"; wait for 100 ns;
sel_shl_shr <= "111"; wait for 100 ns;
i_order <= "10100000";
sel_shl_shr <= "111"; wait for 100 ns;
sel_shl_shr <= "110"; wait for 100 ns;
sel_shl_shr <= "101"; wait for 100 ns;
sel_shl_shr <= "100"; wait for 100 ns;
sel_shl_shr <= "011"; wait for 100 ns;
sel_shl_shr <= "010"; wait for 100 ns;
sel_shl_shr <= "001"; wait for 100 ns;
sel_shl_shr <= "000"; wait for 100 ns;
i_order <= "10100000";
sel_shl_shr <= "000"; wait for 100 ns;
sel_shl_shr <= "001"; wait for 100 ns;
sel_shl_shr <= "010"; wait for 100 ns;
sel_shl_shr <= "011"; wait for 100 ns;
sel_shl_shr <= "100"; wait for 100 ns;
sel_shl_shr <= "101"; wait for 100 ns;
sel_shl_shr <= "110"; wait for 100 ns;
sel_shl_shr <= "111"; wait for 100 ns;
i_order <= "00000101";
sel_shl_shr <= "111"; wait for 100 ns;
sel_shl_shr <= "110"; wait for 100 ns;
sel_shl_shr <= "101"; wait for 100 ns;
sel_shl_shr <= "100"; wait for 100 ns;
sel_shl_shr <= "011"; wait for 100 ns;
sel_shl_shr <= "010"; wait for 100 ns;
sel_shl_shr <= "001"; wait for 100 ns;
sel_shl_shr <= "000"; wait for 100 ns;
report "tb done" severity failure;
wait;
end process;

END;
