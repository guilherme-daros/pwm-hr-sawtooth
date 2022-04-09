library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library std;
use std.textio.all;
use std.env.finish;

entity hrpwm_tb is
end hrpwm_tb;

architecture sim of hrpwm_tb is
    
    -- maximum value of pwm_modulator's counter
    constant max_value: integer := 100;
    
    -- pwm_modulator clk speed in hz
    constant clk_hz : integer := 1e6;
    constant clk_period : time := 1 sec / clk_hz;
    constant D : integer := integer(ceil(log2(real(max_value))));

    -- clocks and reset signal for pwm_modulator
    signal clk0: std_logic := '1';
    signal rst : std_logic := '1';

    -- modulator set-point
    signal modulator : std_logic_vector(integer(ceil(log2(real(max_value))))+2 downto 0);

    -- modulator output
    signal saida : std_logic := '0';
    signal counter : unsigned (6 downto 0) := (others => '0');

    -- output data signals
    signal sampling_clk : std_logic := '0';

    begin

    sampling_clk <= not sampling_clk after clk_period/32;

    clk0 <= not clk0 after clk_period / 2;

    DUT : entity work.hrpwm(rtl)
    generic map ( max_val => max_value)
    port map (
        clock => clk0,
        reset => rst,
        m => modulator,
        s => saida,
        cnt => counter
    );

    -- modulator input behavior for simulation
    sequencer_proc : process
    begin
        modulator <= "0000001000";
        wait for clk_period * 2;
        rst <= '0';
        
        modulator <= std_logic_vector(unsigned(modulator)+50);
        wait for clk_period * 2**D;       
        wait for clk_period * 2**D;       
        modulator <= std_logic_vector(unsigned(modulator)+50);
        wait for clk_period * 2**D;       
        wait for clk_period * 2**D;       
        modulator <= std_logic_vector(unsigned(modulator)+50);
        wait for clk_period * 2**D;       
        wait for clk_period * 2**D;       
        
        

        finish;
    end process;

    -- -- output data file handling
    -- output_data : process(sampling_clk)
    --     file output_file : text open WRITE_MODE is "../export/data.csv";
    --     variable buffer_line : line;
	--     variable i : integer := 0;
	-- begin
    --     if rising_edge(sampling_clk) then
    --         write(buffer_line, i);
    --         write(buffer_line, string'(","));
    --         write(buffer_line, bit'(to_bit(clk0)));
    --         write(buffer_line, string'(","));
    --         write(buffer_line, to_integer(unsigned(modulator)));
    --         write(buffer_line, string'(","));
    --         -- write(buffer_line, to_integer(unsigned(counter)));
    --         -- write(buffer_line, string'(","));
    --         write(buffer_line, bit'(to_bit(saida)));
    --         writeline(output_file, buffer_line);
    --     end if;
    --     i := i + 1;
    -- end process;

end architecture;