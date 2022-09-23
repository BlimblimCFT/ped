----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.09.2022 12:21:13
-- Design Name: 
-- Module Name: mux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port ( sel: in STD_LOGIC;
           JA: in STD_LOGIC_VECTOR(3 downto 0);
           JB: in STD_LOGIC_VECTOR(3 downto 0);
           dss: out STD_LOGIC_VECTOR(3 downto 0));
end mux;

architecture Behavioral of mux is

begin

    dss <= JA when sel = '0' else
           JB when sel = '1';

end Behavioral;
