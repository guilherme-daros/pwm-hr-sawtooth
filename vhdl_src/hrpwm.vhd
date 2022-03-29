library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity hrpwm is 
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
end hrpwm;

architecture rtl of hrpwm is

  component counter is 
  generic ( max_val: integer );
  port ( 
      clk, rst: in std_logic;
      carrier : out unsigned (integer(ceil(log2(real(max_val))))-1 downto 0)
      );
  end component;
  
  component hrpwm_pll is
	port (
      areset : in std_logic  := '0';
      inclk0 : in std_logic  := '0';
      c0 : out std_logic ;
      c1 : out std_logic ;
      c2 : out std_logic ;
      c3 : out std_logic
	    );
	end component;


  signal clk0, clk1, clk2, clk3, clk4, clk5, clk6, clk7: std_logic := '0';
  signal CARRIER: unsigned (integer(ceil(log2(real(max_val))))-1 downto 0) := (others=>'0');
  signal SETD: std_logic := '0';
  signal CLRD: std_logic := '0';
  signal SET, RST: std_logic := '0';
  signal CLR0, CLR1, CLR2, CLR3, CLR4, CLR5, CLR6, CLR7: std_logic := '0';
  signal OUT_PWM: std_logic := '0';

  begin
  

  -- ================================================== --
  -- Testes

  cnt <= CARRIER;
  -- ================================================== --


  -- ================================================== --
  -- Componentes

  cntr_0: counter
  generic map(max_val => max_val)
  port map(
    clk => clk0,
    rst => reset,
    carrier => CARRIER
    );

  pll : hrpwm_pll 
  port map (
    areset => reset,
    inclk0 => clock ,
    c0 => clk0,
    c1 => clk1,
    c2 => clk2,
    c3 => clk3
	  );
  -- ================================================== --
  

  -- ================================================== --
  -- Clocks 
  clk4 <= not clk0;
  clk5 <= not clk1;
  clk6 <= not clk2;
  clk7 <= not clk3;
  -- ================================================== --
  

  -- ================================================== --
  -- Comparadores
  SETD <= '1' when CARRIER = (to_unsigned(0, width+2)) else '0';
  CLRD <= '1' when CARRIER = unsigned(m(width+2 downto 3)) else '0';
  -- ================================================== --


  -- ================================================== --
  -- SET-RESET FlipFlops
  FF_SET: process(clk0, SETD)
  begin
    if rising_edge(clk0) then
      SET <= SETD;
    end if;
  end process;

  FF_RESET : process(clk0, CLRD)
  begin
     if rising_edge(clk0) then
      CLR0 <= CLRD;
    end if;
  end process;
  -- ================================================== --


  -- ================================================== --
  -- PLL_CLK FlipFLops
  FF1 : process (clk1, CLR0)
  begin
    if rising_edge(clk1) then
      CLR1 <= CLR0;
    end if;
  end process;
  
  FF2 : process (clk2, CLR0)
  begin
    if rising_edge(clk2) then
      CLR2 <= CLR0;
    end if;
  end process;
  
  FF3 : process (clk3, CLR0)
  begin
    if rising_edge(clk3) then
      CLR3 <= CLR0;
    end if;
  end process;
  
  FF4 : process (clk4, CLR0)
  begin
    if rising_edge(clk4) then
      CLR4 <= CLR0;
    end if;
  end process;
  
  FF5 : process (clk5, CLR0)
  begin
    if rising_edge(clk5) then
      CLR5 <= CLR0;
    end if;
  end process;
  
  FF6 : process (clk6, CLR0)
  begin
    if rising_edge(clk6) then
      CLR6 <= CLR0;
    end if;
  end process;
  
  FF7 : process (clk7, CLR0)
  begin
    if rising_edge(clk7) then
      CLR7 <= CLR0;
    end if;
  end process;
  -- ================================================== --


  -- ================================================== --
  -- PLL MUX
  RST <= CLR0 when m(2 downto 0) = "000" else
         CLR1 when m(2 downto 0) = "001" else
         CLR2 when m(2 downto 0) = "010" else
         CLR3 when m(2 downto 0) = "011" else
         CLR4 when m(2 downto 0) = "100" else
         CLR5 when m(2 downto 0) = "101" else
         CLR6 when m(2 downto 0) = "110" else
         CLR7 when m(2 downto 0) = "111";
  -- ================================================== --

  -- ================================================== --
  -- Output Latch
  OUTPUT_LATCH : process(SET, RST)
  begin
	 if RST = '1' then
		  OUT_PWM <= '0';
    elsif SET = '1' then
      OUT_PWM <= '1';
    end if;
  end process;

  s <= OUT_PWM;
  -- ================================================== --

end architecture;