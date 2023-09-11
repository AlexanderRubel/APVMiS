----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2023 11:37:02
-- Design Name: 
-- Module Name: testbench - Behavioral
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

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is
    component top
        Port ( 
            A_i   : in  std_logic_vector (3 downto 0);
            B_i   : in  std_logic_vector (3 downto 0);
            g_i   : in  std_logic;
            sel_i : in  std_logic;
            Y_1_o   : out std_logic_vector (3 downto 0);
            Y_2_o   : out std_logic_vector (3 downto 0)
        );  
    end component;
    signal A   : std_logic_vector (3 downto 0);
    signal B   : std_logic_vector (3 downto 0);
    signal g   : std_logic;
    signal sel : std_logic;
    signal Y1  : std_logic_vector (3 downto 0);
    signal Y2  : std_logic_vector (3 downto 0);
begin
    top_0: top
    port map (
        A_i   => A,
        B_i   => B,
        g_i   => g,
        sel_i => sel,
        Y_1_o => Y1,
        Y_2_o => Y2
    );

    process
        constant PERIOD: time := 40 ns;
    begin
        A   <= "1010";
        B   <= "0101";
        g   <= '1';
        sel <= '0';
        wait for PERIOD;
        sel <= '1';
        wait for PERIOD;
        sel <= '0';
        wait for PERIOD;
        g   <= '0';
        wait for PERIOD;
        sel <= '1';
        wait for PERIOD;
        A   <= "1110";
        B   <= "0010";
        wait for PERIOD;
        sel <= '0';
        wait;
    end process;

end Behavioral;
