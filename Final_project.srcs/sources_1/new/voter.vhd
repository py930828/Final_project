----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2017 04:22:50 PM
-- Design Name: 
-- Module Name: voter - Behavioral
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

entity voter is
  Port (A   :in std_logic_vector(2 downto 0);
        enable,clk,rst  :in std_logic;
        output  :out std_logic_vector(2 downto 0)
         );
end voter;

architecture Behavioral of voter is
type my_array is array (0 to 9) of std_logic_vector(2 downto 0);
constant counter : integer := 0;
signal temp : std_logic_vector;
--signal count:integer := counter;
signal c : integer := counter;
signal max : integer;
signal maxnum :std_logic_vector(2 downto 0);
signal ticket:my_array;

begin

process(clk,rst,A,enable)

begin 
        if(rst = '1') then
            for i in 0 to 9 loop
                ticket(i) <= (others => '0');
            end loop;
            
        elsif (rising_edge(clk))then
            if(rising_edge(enable))then
                -- save bits to array
                for i in 0 to 9 loop
                    ticket(i) <= A;
                end loop;                          
             end if;
        end if;
        
            for i in 0 to 8 loop
                c <= 0;
                temp <= ticket(i);
                for j in 0 to 9 loop
                    if ( temp = ticket(i))then
                        c <= c + 1;
                     end if;
                 end loop;
                 
                 if(c > max )then
                    maxnum <= temp;
                    max <= c;
                 end if;
             end loop;        
          output <= maxnum;
               
 end process;
    

end Behavioral;
