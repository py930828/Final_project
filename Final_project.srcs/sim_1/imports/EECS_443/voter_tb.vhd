----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2017 11:32:06 AM
-- Design Name: 
-- Module Name: voter_tb - Behavioral
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

entity voter_tb is
--  Port ( );
end voter_tb;

architecture Behavioral of voter_tb is

    component voter is
        Port (A   :in std_logic_vector(2 downto 0);
            enable,clk,rst  :in std_logic;
            output  :out std_logic_vector(2 downto 0)
             );
        end component;
        
        signal A : std_logic_vector(2 downto 0):=(others => '0');
        signal enable,clk,rst :std_logic;
        signal output : std_logic_vector(2 downto 0):=(others => '0');
        
        constant delay_period : time := 10 ns;
begin

        uut: voter PORT MAP (
          A => A,
          enable => enable,
          clk => clk,
          rst => rst
        );
        
    process
                begin    
                A <= "001"; -- 1 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                clk <='0';
                
                A <= "010"; -- 2 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                clk <='0';
                
                A <= "101"; -- 3 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                clk <= '0';
                
                A <= "011"; -- 4 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                clk <= '0';
                
                A <= "001"; -- 5 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                clk <= '0';
                
                A <= "001"; -- 6 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                clk <= '0';
                
                A <= "100"; -- 7 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                clk <= '0';
                
                A <= "010"; -- 8 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                clk <= '0';
                
                A <= "001"; -- 9 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                clk <= '0';
                
                A <= "001"; -- 10 --
                clk <= '1';
                rst <= '0';
                enable <= '1';
                
                wait;
                
            end process;
        


end Behavioral;
