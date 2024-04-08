library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity receiver is
  port (
    clk         : in  std_logic;
    rst         : in  std_logic;
    rx          : in  std_logic;
    dato_rx     : out std_logic_vector(7 downto 0);
    error_recep : out std_logic;
    DATO_RX_OK  : out std_logic);
end receiver;

architecture rtl of receiver is
-- Declaración de las Sennales y Constantes
constant tiempoMuestreo : integer := 27; -- Constante del prescaler, 4.32us --> 4320ns --> 4320 / 16 = 270 --> 270 / 10 = 27 CLK
signal PR_Cnt : unsigned(3 downto 0); -- Sennal del contador del Prescaler
signal PR_FC : std_logic; -- Sennal de salida del Prescaler
signal FSM_PR : std_logic; -- Sennal que manda la FSM al Prescaler para que este siga contando o no, en caso de que no, se reincia a 0
signal FSM_CntR : std_logic; -- Sennal que manda la FSM al contador para que siga contando o no
signal CntR_Out : unsigned(3 downto 0); -- Sennal de salida del Contador que cuenta las muestras realizadas sobre un bit

begin
  process(FSM_PR, CLK, RST) -- Proceso que modela el Prescaler
  begin
    if RST = '1' then
      PR_Cnt <= 0;
      PR_FC <= '0';
    elsif CLK'event and CLK = '1' then
      -- Ahora tenemos que ver si podemos seguir contando
      if FSM_PR = '1' then
        -- Significa que podemos contar, aunque si estamos en 27, tendremos que reiniciar
        if PR_Cnt = tiempoMuestreo - 1 then
          -- Se verifica que se ha llegado al fin de cuenta, y que tenemos que reiniciar
          PR_Cnt <= 0;
          PR_FC <= '1';
        else
          -- No estamos a fin de cuenta, por tanto tenemos que incrementar el contador
          PR_Cnt <= PR_Cnt + 1;
          PR_FC <= '0';
        end if;
      else
        -- Verificamos que no podemos contar porque la maquina de estados no esta recibiendo, por tanto reiniciamos
        PR_Cnt <= 0;
        PR_FC <= '0';
      end if;
    end if;
  end process;

  process (PR_Out, FSM_CntR, CLK, RST) -- Proceso que modela el Contador que cuenta las muestras realizadas sobre un bit
  begin
    if RST = '1' then
      CntR_Out <= 0;
    elsif (CLK'event and CLK = '1') and (PR_Out = '1') then




end rtl;