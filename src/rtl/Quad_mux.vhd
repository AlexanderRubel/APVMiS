----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2023 12:09:47
-- Design Name: 
-- Module Name: Quad_mux - Behavioral
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

entity Quad_mux is
    Port (
        A_i       : in  std_logic_vector (3 downto 0);
        B_i       : in  std_logic_vector (3 downto 0);
        g_i       : in  std_logic;
        sel_i     : in  std_logic;

        Y_o       : out std_logic_vector (3 downto 0)
    );
end Quad_mux;

architecture Behavioral of Quad_mux is
    signal select_A   : std_logic;
    signal select_B   : std_logic;
    signal selected_A : std_logic_vector (3 downto 0);
    signal selected_B : std_logic_vector (3 downto 0);
begin
    select_B <= (sel_i) and (not g_i);
    select_A <= (not sel_i) and (not g_i);
    
    selected_A <= (A_i(0) and select_A) 
                & (A_i(1) and select_A)
                & (A_i(2) and select_A)
                & (A_i(3) and select_A);
    
    selected_B <= (B_i(0) and select_B) 
                & (B_i(1) and select_B)
                & (B_i(2) and select_B)
                & (B_i(3) and select_B);

    Y_o <= (selected_A(0) or selected_B(0))
         & (selected_A(1) or selected_B(1))
         & (selected_A(2) or selected_B(2))
         & (selected_A(3) or selected_B(3));
    -- Y_o <= (selected_A) or (selected_B);
end Behavioral;
