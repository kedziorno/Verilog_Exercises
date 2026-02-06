-------------------------------------------------------------------------------
-- Company:         HomeDL
-- Engineer:        ko
--
-- Create Date:     19:56:16 01/18/2026
-- Design Name:     pong_p_chu
-- Module Name:     barrel_shifter - Behavioral
-- Project Name:    Prepare for exercise 3.11.1
-- Target Devices:  Synthesizable code (n=3)
-- Tool versions:   ISE 14.7
-- Description:     Barrel shifter n-bit used generate's
--                  Example based on link:
--                  https://tams.informatik.uni-hamburg.de/applets/hades/webdemos/10-gates/60-barrel/shifter8.html
--
-- Dependencies:    -
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: To change left-rigt/right-left, replace d1/d0 in m2_1
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity barrel_shifter_vhdl is
  generic (n : integer := 3);
  port (
    o_order     : out std_logic_vector (2 ** n - 1 downto 0);
    i_order     : in  std_logic_vector (2 ** n - 1 downto 0);
    sel_shl_shr : in  std_logic_vector (n      - 1 downto 0);
    ml_sb_order : in  std_logic
  );
end entity barrel_shifter_vhdl;

architecture behavioral of barrel_shifter_vhdl is

  component M2_1 is
  port(
    O   : out std_logic;
    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
  end component M2_1;

  type chain_mux2_t is array (0 to n - 1) of std_logic_vector (2 ** n - 1 downto 0);
  signal msb_order            : chain_mux2_t;
  signal lsb_order            : chain_mux2_t;
  attribute keep              : string;
  attribute keep of msb_order : signal is "true";
  attribute keep of lsb_order : signal is "true";

begin

  g0 : for i in 0 to n-1 generate
    g1 : if (i = 0) generate
      g2 : for j in 0 to 2 ** n - 1 generate
        g4 : if (j = 0) generate
          m2_chain_1_msb : m2_1 port map (s0 => sel_shl_shr (i), d1 => '0', d0 => i_order (j), o => msb_order (i)(j));
          m2_chain_1_lsb : m2_1 port map (s0 => sel_shl_shr (i), d0 => '0', d1 => i_order (j), o => lsb_order (i)(j));
        end generate g4;
        g5 : if (j > 0) generate
          m2_chain_2_msb : m2_1 port map (s0 => sel_shl_shr (i), d1 => i_order (j - 1), d0 => i_order (j), o => msb_order (i)(j));
          m2_chain_2_lsb : m2_1 port map (s0 => sel_shl_shr (i), d0 => i_order (j - 1), d1 => i_order (j), o => lsb_order (i)(j));
        end generate g5;
      end generate g2;
    end generate g1;
    g7 : if (i > 0) generate
      g8 : for k in 0 to (2 ** i) - 1 generate
        m2_chain_3_msb : m2_1 port map (s0 => sel_shl_shr (i), d1 => '0', d0 => msb_order (i - 1)(k), o => msb_order (i)(k));
        m2_chain_3_lsb : m2_1 port map (s0 => sel_shl_shr (i), d0 => '0', d1 => lsb_order (i - 1)(k), o => lsb_order (i)(k));
      end generate g8;
      g9 : for l in (2 ** i) to 2 ** n - 1 generate
        m2_chain_4_msb : m2_1 port map (s0 => sel_shl_shr (i), d1 => msb_order (i - 1)(l - (2 ** i)), d0 => msb_order (i - 1)(l), o => msb_order (i)(l));
        m2_chain_4_lsb : m2_1 port map (s0 => sel_shl_shr (i), d0 => lsb_order (i - 1)(l - (2 ** i)), d1 => lsb_order (i - 1)(l), o => lsb_order (i)(l));
      end generate g9;
    end generate g7;
  end generate g0;

  o_order <= msb_order (n - 1) when ml_sb_order = '1' else lsb_order (n - 1) when ml_sb_order = '0';

end architecture behavioral;
