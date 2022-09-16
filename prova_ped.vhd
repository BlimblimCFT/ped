library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prova_ped is
    Port ( bits : in STD_LOGIC_VECTOR (1 downto 0);
           saida : out STD_LOGIC_VECTOR (6 downto 0));
end prova_ped;

architecture Behavioral of prova_ped is

begin
    
    WITH bits select
        saida <= "1111111" WHEN "00",
                 "1001111" WHEN "01",
                 "0010010" WHEN "10",
                 "0000000" WHEN others;

end Behavioral;
