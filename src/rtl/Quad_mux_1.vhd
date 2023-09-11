----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2023 15:39:12
-- Design Name: 
-- Module Name: Quad_mux_1 - Behavioral
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

entity Quad_mux_1 is
    Port (
        A_i       : in  std_logic_vector (3 downto 0);
        B_i       : in  std_logic_vector (3 downto 0);
        g_i       : in  std_logic;
        sel_i     : in  std_logic;

        Y_o       : out std_logic_vector (3 downto 0)
    );
end Quad_mux_1;

architecture Behavioral of Quad_mux_1 is
begin
    process (g_i, sel_i, A_i, B_i) begin
        if (g_i = '0') then
            if (sel_i = '0') then
                Y_o <= A_i;
            else
                Y_o <= B_i;
            end if;
        else
            Y_o <= "0000";
        end if;
    end process;
end Behavioral;
