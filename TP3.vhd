----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2024 05:08:34 PM
-- Design Name: 
-- Module Name: tp3 - Behavioral
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


entity tp3 is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           C : in STD_LOGIC;
           Q : out STD_LOGIC;
           noQ : out STD_LOGIC);
end tp3;

architecture Behavioral of tp3 is

signal aux : std_logic;

begin

process(C)

begin
    if (C='1' and C'event) then
        aux <= (J and not aux) or (not K and aux);
    end if;
end process;
Q <= aux;
noQ <= not aux;

end Behavioral;
