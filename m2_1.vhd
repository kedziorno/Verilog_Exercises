-------------------------------------------------------------------------------
-- Copyright (c) 2006 Xilinx, Inc.
-- All Right Reserved.
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor      : Xilinx
-- \   \   \/     Version     : J.23
--  \   \         Description : Xilinx HDL Macro Library
--  /   /                       2-to-1 Multiplexer
-- /___/   /\     Filename    : M2_1.vhd
-- \   \  /  \    Timestamp   : Tue Jul 11 2006
--  \___\/\___\
--
-- Revision:
-- 07/11/06 - Initial version.
-- End Revision

----- CELL M2_1 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1;

architecture M2_1_V of M2_1 is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_V;
