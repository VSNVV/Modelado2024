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
signal MuxOut : std_logic; -- Sennal de salida del Multiplexor
signal CntOut : unsigned(3 downto 0); -- Sennal de salida del Contador
signal Busy : std_logic; -- Sennal que indica si el sistema ocupado enviando un dato

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
      when "0001" =>
        MuxOut <= RegOut(0);
      when "0010" =>
        MuxOut <= RegOut(1);
      when "0011" =>
        MuxOut <= RegOut(2);
      when "0100" =>
        MuxOut <= RegOut(3);
      when "0101" =>
        MuxOut <= RegOut(4);
      when "0110" =>
        MuxOut <= RegOut(5);
      when "0111" =>
        MuxOut <= RegOut(6);
      when "1000" =>
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
    end if;
  end process;
  
  process(Busy, CE, CLK, RST) -- Proceso del Contador (descendente de 8 a 0, siendo 0 el fin de cuenta)
  begin
    if RST = '1' then
      -- Reiniciamos el Contador a su valor incial que en este caso es el 1
      CntOut <= "1000";
    elsif CLK'event and CLK = '1' then
      -- FALTA EVALUAR EL CE, QUE NO SE QUE ES
      if CntOut = "0000" then
        -- Se verifica que estamos en el fin de cuenta, por tanto reinciamos al valor inicial
        CntOut <= "1000"
      else
        -- Si no estamos en el fin de cuenta, decrementamos en una unidad la salida:
        CntOut <= CntOut - 1;
      end if;
    end if;
  end process;




  
end rtl;

