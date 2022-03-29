library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity modulador_pwm is 
	port(
	SYS_CLK : in std_logic;
	PB : in std_logic_vector(4 downto 1);
	USER_LED: out std_logic_vector(8 downto 1)
	);
	
end modulador_pwm;

architecture behv of modulador_pwm is

component hrpwm is 
  generic (
    width: natural := 6;
    max_val: integer := 100
    );
  port (
    clock: in std_logic;  
    reset: in std_logic;
    m: in std_logic_vector (width+2 downto 0);
    s: out std_logic;
    cnt: out unsigned (integer(ceil(log2(real(max_val))))-1 downto 0)
    );
end component;

signal modulat: std_logic_vector(8 downto 0);

begin

modulat <= "000001000" when PB(2) = '1' else "011110111";
pwm0: hrpwm
	generic map(width => 6, max_val=>100)
	port map(
	clock => SYS_CLK,
	reset => PB(1),
	m => modulat,
	s => USER_LED(1),
	cnt => open
	);

end architecture;