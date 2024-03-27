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
-- Declaracion de Constantes
-- constant CTE_ANDS      : integer := 100000;   -- para la implementacion
-- constant CTE_ANDS  : integer := 200;  -- para la simulacion
constant N1 : integer := 28; -- Constante del Prescaler
-- Declaracion de Sennales
signal RegOut : std_logic_vector(7 downto 0); -- Sennal que sale del Registro hacia el Multiplexor
signal MuxOut : std_logic; -- Sennal de salida del Multiplexor
signal CntOut : unsigned(3 downto 0); -- Sennal de salida del Contador
signal BUSY   : std_logic; -- Sennal que indica si el sistema ocupado enviando un dato
signal CE     : std_logic; -- Sennal Clock Enable que sale del circuito combinacional del prescaler
signal FC     : std_logic; -- Sennal de salida el Prescaler
signal ultFC  : std:logic; -- Sennal auxiliar de FC
signal CntReg : integer range 0 to N1 - 1; -- Sennal del contador asociado del Prescaler
signal SCLK   : std:logic; -- Sennal SCLK

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
  
  process(BUSY, CE, CLK, RST) -- Proceso del Contador (descendente de 8 a 0, siendo 0 el fin de cuenta)
  begin
    if RST = '1' then
      -- Reiniciamos el Contador a su valor incial que en este caso es el 1
      CntOut <= "1000";
    elsif (CLK'event and CLK = '1') and (CE = '1') then
      if CntOut = "0000" then
        -- Se verifica que estamos en el fin de cuenta, por tanto reinciamos al valor inicial
        CntOut <= "1000"
      else
        -- Si no estamos en el fin de cuenta, decrementamos en una unidad la salida:
        CntOut <= CntOut - 1;
      end if;
    end if;
  end process;

  process(BUSY, CLK, RST) -- Proceso que modela el Prescaler, nuestro valor de N1 es 28
  begin
    if RST = '1' then
      CntReg <= 0;
    elsif (CLK'event and CLK = '1') and (BUSY = '1') then
      -- Se verifica que hay sennal de reloj y que el sistema esta transmitiendo un dato
      if CntReg = N1 - 1 then
        -- Verificamos que se ha llegado a fin de cuenta
        CntReg <= 0;
        FC <= '1';
      else
        -- Verificamos que no se ha llegado al fin de cuenta
        CntReg <= CntReg + 1;
        FC <= '0';
      end if;
    end if;
    ultFC <= FC;
  end process;

  process(FC, SCLK) -- Proceso que modela el circuito combinacional
  begin
    if FC = '1' and SCLK = '1' then
      CE <= '1';
    else
      CE <= '0';
    end if;
  end process;

  process(FC, BUSY, CLK, RST) -- Proceso que modela el circuito secuencial de salida del Prescaler
  begin
    -- Cuando entienda que pollas hace la parte de abajo del diagrama se pueden hacer cosas
    if (RST = '1') then
      SCLK <= '0';
    elsif (CLK'event and CLK = '1') and (BUSY = '1') then
      if FC = '0' and ultFC = '1' then
        -- Se detecta flanco de bajada en FC
        SCLK <= not SCLK;
      end if;
    end if;
  end process;

  process(DATA_SPI_OK, CE, CntOut, RST, CLK) -- Proceso del cirucito secuencial que define BUSY
  begin
    if RST = '1' then
      BUSY <= '0';
    elsif (CLK'event and CLK  = '1') and (CE = '1') then
      if DATA_SPI_OK = '1' then
        BUSY <= '1';
      elsif CntOut = "0000" then
        -- Fin de transmision
        BUSY <= '0'
      end if;
    end if;
  end process;

  process(BUSY) -- Proceso del circuito combinacional que define CS
  begin
    CS <= not BUSY;
  end process;
  
end rtl;