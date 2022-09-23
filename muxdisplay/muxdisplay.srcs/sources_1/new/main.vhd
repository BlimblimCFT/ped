----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.09.2022 21:06:41
-- Design Name: 
-- Module Name: main - Behavioral
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

entity main is
    Port (  sel: in STD_LOGIC;
            seg: out STD_LOGIC_VECTOR(6 downto 0);
            an: out STD_LOGIC_VECTOR(3 downto 0);
            JB: in STD_LOGIC_VECTOR(3 downto 0);
            JC: in STD_LOGIC_VECTOR(3 downto 0));
            
end main;

architecture Behavioral of main is

component display is 
    Port (  sel: in STD_LOGIC;
            sw:  in STD_LOGIC_VECTOR(3 downto 0);
            seg: out STD_LOGIC_VECTOR(6 downto 0);
            an: out STD_LOGIC_VECTOR(3 downto 0));
end component; 

component mux is
    Port ( sel: in STD_LOGIC;
           JB: in STD_LOGIC_VECTOR(3 downto 0);
           JC: in STD_LOGIC_VECTOR(3 downto 0);
           dss: out STD_LOGIC_VECTOR(3 downto 0));
end component;

signal dss: STD_LOGIC_VECTOR(3 downto 0);

begin 
    u1: mux port map(
            sel => sel,
            JB => JB,
            JC => JC,
            dss => dss
            );
       
    u2: display port map(
            sel => sel,
            sw => dss,
            seg => seg,
            an => an
            );
    
end Behavioral;
