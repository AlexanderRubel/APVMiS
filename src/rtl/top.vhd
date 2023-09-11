----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2023 10:48:48
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( 
        A_i   : in  std_logic_vector (3 downto 0);
        B_i   : in  std_logic_vector (3 downto 0);
        g_i   : in  std_logic;
        sel_i : in  std_logic;
        Y_1_o : out std_logic_vector (3 downto 0);
        Y_2_o : out std_logic_vector (3 downto 0)
    );  
end top;

architecture Behavioral of top is
    component Quad_mux
        Port (
            A_i   : in  std_logic_vector (3 downto 0);
            B_i   : in  std_logic_vector (3 downto 0);
            g_i   : in  std_logic;
            sel_i : in  std_logic;
            Y_o   : out std_logic_vector (3 downto 0)
        );
    end component;

    component Quad_mux_1
        Port (
            A_i   : in  std_logic_vector (3 downto 0);
            B_i   : in  std_logic_vector (3 downto 0);
            g_i   : in  std_logic;
            sel_i : in  std_logic;
            Y_o   : out std_logic_vector (3 downto 0)
        );
    end component;
begin
    q_mux_0: Quad_mux
        port map (
            A_i   => A_i,
            B_i   => B_i,
            g_i   => g_i,
            sel_i => sel_i,
            Y_o   => Y_1_o
        );

    q_mux_1: Quad_mux_1
        port map (
            A_i   => A_i,
            B_i   => B_i,
            g_i   => g_i,
            sel_i => sel_i,
            Y_o   => Y_2_o
        );
end Behavioral;
