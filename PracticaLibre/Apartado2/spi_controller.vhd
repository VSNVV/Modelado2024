library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity spi_controller is
  port ( CLK         : in  std_logic;
         RST         : in  std_logic;
         DATA_SPI_OK : in  std_logic;
         DATA_SPI    : in  std_logic_vector (8 downto 0);
         D_C         : out std_logic;
         CS          : out std_logic;
         SDIN        : out std_logic;
         SCLK        : out std_logic;
         END_SPI     : out std_logic);
end spi_controller;

architecture rtl of spi_controller is
-- Declaracion de Sennales
signal RegOut : std_logic_vector(7 downto 0); -- Sennal que sale del Registro hacia el Multiplexor
signal MuxOut : std_logic;



begin
  process(DATA_SPI, DATA_SPI_OK, CLK) -- Prcoeso del Registro (creo que es un biestable D)
  begin
    if RST = '1' then
      -- Se resetea el registro
      D_C <= '0';
      RegOut <= "00000000";
    elsif (CLK'event and CLK = '1') and (DATA_SPI_OK = '1') then
      -- Hacemos que el registro funcione, ya que ambas señales estan activas
      D_C <= DATA_SPI(8); -- Es el primer bit de la entrada DATA_SPI
      RegOut <= DATA_SPI(7 downto 0); -- Es el resto de bits de la entrada DATA_SPI
    end if;
  end process;

  process(RegOut, CntOut) -- Proceso del Multiplexor
  begin
    -- De acuerdo al selector, tenemos que seleccionar el bit correspondiente de RegOut
    case CntOut is
      when "000" =>
        MuxOut <= RegOut(0);
      when "001" =>
        MuxOut <= RegOut(1);
      when "010" =>
        MuxOut <= RegOut(2);
      when "011" =>
        MuxOut <= RegOut(3);
      when "100" =>
        MuxOut <= RegOut(4);
      when "101" =>
        MuxOut <= RegOut(5);
      when "110" =>
        MuxOut <= RegOut(6);
      when "111" =>
        MuxOut <= RegOut(7);
      when others =>
        MuxOut <= '0';
    end case;
  end process;

  process(MuxOut, CntOut, RST, CLK) -- Proceso del Biestable D
  begin
    if RST = '1' then
      SDIN <= '0';
    elsif CLK'event and CLK = '1' then
      SDIN <= MuxOut;
      


  end process; 




  
end rtl;

