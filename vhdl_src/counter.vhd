library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity counter is 
    generic ( max_val: integer );
    port ( 
        clk, rst: in std_logic;
        carrier : out unsigned (integer(ceil(log2(real(max_val))))-1 downto 0)
        );
end counter;

architecture rtl of counter is
    signal cnt : unsigned (integer(ceil(log2(real(max_val))))-1 downto 0);
    begin
    count: process (clk, rst)
        begin
            if rst = '1' then
                cnt <= (others => '0');
            elsif rising_edge(clk) then
                if (cnt >= max_val) then
                    cnt <= (others => '0');
                else
                    cnt <= cnt + 1;
                end if;
            end if;
    end process;
    
    carrier <= cnt;
end architecture;