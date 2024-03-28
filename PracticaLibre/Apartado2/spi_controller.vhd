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
constant N1 : integer := 28; -- Constante del Prescaler
-- Declaracion de Sennales
signal RegOut : std_logic_vector(7 downto 0); -- Sennal que sale del Registro hacia el Multiplexor
signal MuxOut : std_logic; -- Sennal de salida del Multiplexor
signal CntOut : unsigned(3 downto 0); -- Sennal de salida del Contador
signal BUSY   : std_logic; -- Sennal que indica si el sistema ocupado enviando un dato
signal CE     : std_logic; -- Sennal Clock Enable que sale del circuito combinacional del prescaler
signal FC     : std_logic; -- Sennal de salida el Prescaler
signal ultFC  : std_logic; -- Sennal auxiliar de FC
signal CntReg : integer range 0 to N1 - 1; -- Sennal del contador asociado del Prescaler
signal SCLK_Out   : std_logic; -- Sennal SCLK

begin
  process(DATA_SPI, DATA_SPI_OK, CLK) -- Prcoeso del Registro (creo que es un biestable D)
  begin
    if RST = '1' then
      -- Se resetea el registro
      D_C <= '0';
      RegOut <= "00000000";
    elsif (CLK'event and CLK = '1') and (DATA_SPI_OK = '1') then
      -- Hacemos que el registro funcione, ya que ambas se?ales estan activas
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

  process(CLK, RST) -- Proceso del Biestable D
  begin
    if RST = '1' then
      SDIN <= '0';
    elsif (CLK'event and CLK = '1') then
      if CntOut /= "0000" then
        SDIN <= MuxOut;
      else
        SDIN <= '0';
      end if;
    end if;
  end process;
  
  process(BUSY, CE, CLK, RST) -- Proceso del Contador (descendente de 8 a 0, siendo 0 el fin de cuenta)
  begin
    if RST = '1' then
      CntOut <= "1000";
    elsif CLK'event and CLK = '1' then
      if (CE = '1') and (BUSY = '1') then
        if CntOut = "0000" then
          CntOut <= "1000";
        else
          CntOut <= CntOut - 1;
        end if;
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

  process(FC, SCLK_Out) -- Proceso que modela el circuito combinacional
  begin
    if (FC = '1') and (SCLK_Out = '1') then
      CE <= '1';
    else
      CE <= '0';
    end if; 
  end process;

  process(FC, BUSY, CntOut, ultFC, CLK, RST) -- Proceso que modela el circuito secuencial de salida del Prescaler
  begin
    if RST = '1' then
      SCLK_Out <= '1';
    elsif CLK'event and CLK = '0' then
      if BUSY = '1' and ultFC ='1' and FC ='0'then
        --if CntOut /= "0000" then
          SCLK_Out <= not SCLK_Out;
        --end if;
      end if;
    end if;
  end process;

  SCLK <= SCLK_Out;

  process(DATA_SPI_OK, CE, CntOut, RST, CLK) -- Proceso del cirucito secuencial que define BUSY
  variable auxBusy : std_logic := '0';
  begin
    if RST = '1' then
      BUSY <= '0';
    elsif CLK'event and CLK = '1' then
      if DATA_SPI_OK = '1' then
        auxBusy := '1';
        end if;
      if CE = '1' then
        if CntOut /= "0000" then
          auxBusy := '1';
        else
          auxBusy := '0';
        end if;
      end if;
      BUSY <= auxBusy;
    end if;
  end process;

  process(BUSY) -- Proceso del circuito combinacional que define CS
  begin
    CS <= not BUSY;
  end process;

  process(CntOut) -- Proceso que modela el circuito combinacional que define END_SPI
  begin
    if CntOut = "0000" then
      END_SPI <= '1';
    else
      END_SPI <= '0';
    end if;
  end process;
  
end rtl;