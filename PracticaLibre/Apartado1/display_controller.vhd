library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity display_controller is
  port(RST        : in  std_logic;
       CLK        : in  std_logic;
       DATO_RX_OK : in  std_logic;
       DATO_RX    : in  std_logic_vector(7 downto 0);
       DP         : out std_logic;
       SEG_AG     : out std_logic_vector(6 downto 0);  -- gfedcba
       AND_70     : out std_logic_vector(7 downto 0));
end display_controller;

architecture rtl of display_controller is
--Declaracion de sennales
signal RDOut : std_logic_vector(31 downto 0); -- Sennal de salida del Registro Desplazamiento y entrada al Multiplexor
signal CntOut : std_logic_vector(2 downto 0); -- Sennal de salida del Contador y entrada al selector del Mux y al CC
signal MuxOut : std_logic_vector(3 downto 0); -- Sennal de salida del Multiplexor

begin
  -- Proceso del multiplexor
  process (RDOut, CntOut) -- Proceso del Mux o Multiplexor
  -- Declaracion de variables en el Mux
  variable I0, I1, I2, I3, I4, I5, I6, I7 : std_logic_vector(3 downto 0);
  begin
    -- Dividmos la sennal RDOut entre los inputs del Muktiplexor, cada uno de 4 bits
    I0 := RDOut(3 downto 0);
    I1 := RDOut(7 downto 4);
    I2 := RDOut(11 downto 8);
    I3 := RDOut(15 downto 12);
    I4 := RDOut(19 downto 16);
    I5 := RDOut(23 downto 20);
    I6 := RDOut(27 downto 24);
    I7 := RDOut(31 downto 28);
    -- Una vez dividida la entrada en 4 bits, leemos el selector y asignamos la salida:
    if(CntOut = "000") then
      -- El selector vale 0, por tanto, redirigmos a la salida el valor de I0
      MuxOut <= I0;
    elsif(CntOut = "001") then
      -- El selector vale 1, por tanto, redirigimos a la salida el valor I1
      MuxOut <= I1;
    elsif(CntOut = "010") then
      -- El selector vale 2, por tanto, redirigimos a la salida el valor I2
      MuxOut <= I2;
    elsif(CntOut = "011") then
      -- El selector vale 3, por tanto, redirigimos a la salida el valor I3
      MuxOut <= I3;
    elsif(CntOut = "100") then
      -- El selector vale 4, por tanto, redirigmos a la salida el valor I4
      MuxOut <= I4;
    elsif(CntOut = "101") then
      -- El selector vale 5, por tanto, redirigimos a la salida el valor I5
      MuxOut <= I5;
    elsif(CntOut = "110") then
      -- El selector vale 6, por tanto, redirigimos a la salida el valor I6
      MuxOut <= I6;
    else
      -- El selector vale 7, por tanto, redirigimos a la salida el valor I7
      MuxOut <= I7;
    end if;
  end process




end;
