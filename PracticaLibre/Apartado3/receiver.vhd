
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
-- Declaracion de las Sennales y Constantes
constant tiempoMuestreo : integer := 29; -- Constante del prescaler, 4.34us --> 4340ns --> 4340 / 15 = 289.33 --> 289.33 / 10 = 28.93 --> 29 CLK
--constant tiempoMuestreo : integer := 31; -- Constante del prescaler, 4.34us --> 4340ns --> 4340 / 14 = 310 --> 310 / 10 = 31 --> 31 CLK
signal PR_Cnt : unsigned(3 downto 0); -- Sennal del contador del Prescaler
signal PR_FC : std_logic; -- Sennal de salida del Prescaler
signal FSM_PR : std_logic; -- Sennal que manda la FSM al Prescaler para que este siga contando o no, en caso de que no, se reincia a 0
signal FSM_CntM : std_logic; -- Sennal que manda la FSM al contador de muestras para que pueda contar o no
signal FSM_CntB : std_logic; -- Sennal que manda la FSM al contador de bits para que pueda contar o no
signal FSM_Val : std_logic; -- Sennal que manda la FSM al Registro para enviar el dato por dato_rx
signal CntM_Out : unsigned(3 downto 0); -- Sennal de salida del Contador que cuenta las MUESTRAS realizadas sobre un bit
signal CntB_Out : unsigned(3 downto 0); -- Sennal de salida del COntador que cuenta los BITS leidos
signal RDM_Out : std_logic_vector(14 downto 0); -- Sennal de salida del Registro de Desplazamiento que sobremuestrea RX
signal RDB_Out : std_logic_vector(10 downto 0); -- Sennal de salida del Registro de Desplazamiento que contiene los bits finales
signal CntBin : std_logic; -- Sennal de salida del Circuito Combinacional que cuenta el numero de 1 y 0 de las muestras de RX
signal Val_Out : std_logic; -- Sennal de salida del bloque combinacional que comprueba si un dato es correcto o no
signal PR_Out : std_logic;
type FSM is (Idle, Receiving, Outputing, Verifying, Error); --declaracion de la maquina de estados con los distintos casos posibles
signal STD_Act: FSM; --estado actual de la maquina de estados

begin

  process(FSM_PR, CLK, RST) -- Proceso que modela el Prescaler
  begin
    if RST = '1' then
      PR_Cnt <= (others => '0');
      PR_FC <= '0';
    elsif CLK'event and CLK = '1' then
      -- Ahora tenemos que ver si podemos seguir contando
      if FSM_PR = '1' then
        -- Significa que podemos contar, aunque si estamos en 27, tendremos que reiniciar
        if PR_Cnt = tiempoMuestreo - 1 then
          -- Se verifica que se ha llegado al fin de cuenta, y que tenemos que reiniciar
          PR_Cnt <= (others => '0');
          PR_FC <= '1';
        else
          -- No estamos a fin de cuenta, por tanto tenemos que incrementar el contador
          PR_Cnt <= PR_Cnt + 1;
          PR_FC <= '0';
        end if;
      else
        -- Verificamos que no podemos contar porque la maquina de estados no esta recibiendo, por tanto reiniciamos
        PR_Cnt <= (others => '0');
        PR_FC <= '0';
      end if;
    end if;
  end process;

  process(PR_Out, FSM_CntM, CLK, RST) -- Proceso que modela el Contador que cuenta las muestras realizadas sobre un bit
  begin
    if RST = '1' then
      CntM_Out <= (others => '0');
     
    elsif (CLK'event) and (CLK = '1') and (PR_Out = '1') then -- Ahora tenemos que comprobar si la Maquina de Estados nos deja contar o no
      if FSM_CntM = '1' then
        -- Podemos contar, y en su caso, reiniciar el contador
        if CntM_Out < 15 then
          -- Verificamos que no estamos en el fin de cuenta, por tanto incrementamos en 1 el contador
          CntM_Out <= CntM_Out + 1;
        elsif CntM_Out = 15 then
          -- Verificamos que estamos en el fin de cuenta, por tanto tenemos que reiniciar el contador
          CntM_Out <= (others => '0');
        end if;
      else
        -- Se verifica que la Maquina de Estados no nos deja contar, por tanto reseteamos el contador para el siguiente dato
        CntM_Out <= (others => '0');
      end if;
    end if;
  end process;

  process(CntM_Out, FSM_CntB, CLK, RST) -- Proceso que modela el Contador que cuenta los bits leidos
  begin
    if RST = '1' then
      CntB_Out <= (others => '0');

    elsif CLK'event and CLK = '1' then
      if FSM_CntB = '1' then
        -- Verificamos que la maquina de estados deja contar
        if (CntM_Out = 15) then
          if CntB_Out < 11 then
            CntB_Out <= CntB_Out + 1;
          else
            CntB_Out <= (others => '0');
          end if;
        end if;
      else
        -- Verificamos que la maquina de estados no nos deja contar, por tanto resetamos para el siguiente dato
        CntB_Out <= (others => '0');
      end if;
    end if;
  end process;

  process(RX, PR_FC, CLK, RST) -- Proceso que modela el Registro de Desplazamiento encargado del sobremuestreo de RX
  begin
    if RST = '1' then
      RDM_Out <= (others => '0');
    elsif (CLK'event and CLK = '1') and (PR_FC ='1') then
      -- Cada ciclo de reloj cogemos una muestra de RX, y como empezamos con el bit de menor peso, desplazamos de der a izq
      RDM_Out <= RX & RDM_Out(14 downto 1);
    end if;
  end process;

  process(RDM_Out) -- Proceso que modela el circuito combinacional que cuenta 1 y 0
  variable num0 : integer := 0; -- Variable que almacena el numero de 0
  variable num1 : integer := 0; -- Variable que almacena el numero de 1
  begin
  num0:=0;
  num1:=1;
    -- Contamos el numero de 1 y 0 que hay
    for i in RDM_Out'range loop
      if RDM_Out(i) = '1' then
        num1 := num1 + 1;
      else
        num0 := num0 + 1;
      end if;
    end loop;
    --Una vez que hemos terminado de contar, tenemos que asignar una salida la salida correspondiente
    if(num0 > num1) then
      -- Verificamos que hay mas 0 que 1, por tanto la salida sera un 0
      CntBin <= '0';
    else
      -- Verificamos que hay mas 1 que 0, por tanto la salida sera un 1
      CntBin <= '1';
    end if;
  end process;

  process(CntBin, CntM_Out, CLK, RST) -- Proceso que modela el Registro de Desplazamiento a la salida del contador de 0 y 1
  begin
    if RST = '1' then
      RDB_Out <= (others => '0');
    elsif (CLK'event and CLK = '1') and (CntM_Out = 15) then
      -- Cada vez que se completa una muestra, podemos leer la entrada
      RDB_Out <= CntBin & RDB_Out(10 downto 1);
    end if;
  end process;

  process(RDB_Out) -- Proceso que modela el circuito combinacional que valida si un dato es correcto o no
  variable num_1 : integer :=0;
  variable par: std_logic:='0';
  begin
  num_1:=0;
  for i in RDB_Out'range loop
    if RDB_Out(i) = '1' then
        num_1:= num_1+1;
    end if; 
  end loop;
  if num_1 rem 2 = 0 then -- Verificamos que hay un numero par de 1
    par := '1';
  else 
    par := '0';
  end if;
  if par=RDB_Out(9) and RDB_Out(0) = '0' and RDB_Out(10) = '1' then
    Val_Out <= '1';
  else 
    Val_Out <= '0';
  end if;
  end process;

  process(RDB_Out, FSM_Val, CLK, RST) -- Proceso que modela el Registro que almacena los datos y los envia a la salida
  begin
    if RST = '1' then
      dato_rx <= (others => '0');
    elsif (CLK'event and CLK = '1') and (FSM_VAL = '1') then
      -- Se verifica que la Maquina de estados da la orden a que se envie el dato, por tanto, lo enviamos
      dato_rx <= RDB_Out(8 downto 1);
    end if;
  end process;
    
  process(rx, CNTB_Out, Val_Out, STD_Act, CLK, RST)-- Proceso que modela la Maquina Finita de Estados, cuyos estados son: Idle, Receiving, Outputing, Verifying y Error
  begin 
    if RST = '1' then 
      STD_Act <= Idle;
      FSM_PR <= '0';
      FSM_CntM <= '0';
      FSM_CntB <= '0';
      FSM_Val <= '0';
      dato_rx_ok <= '0';
      error_recep <= '0';
    elsif CLK'event and CLK = '1' then
      case STD_Act is
        when Idle =>
          if RX = '0' then
            STD_Act <= Receiving;
          end if;
        when Receiving =>
          if CntB_Out >= 11 then
            STD_Act <= Verifying;
          end if;
        when Verifying =>
          if Val_Out = '1' then
            STD_Act <= Outputing;
          else
            STD_Act <= Error;
          end if;
        when Outputing =>
          if RX = '1' then
            STD_Act <= Idle;
          end if;
        when Error =>
          if Val_Out = '0' then
            STD_Act <= Idle;        
          end if;        
      end case;   
    end if;
  end process;

  process(RX, STD_Act) -- Proceso que modela el calculo de las salidas de la maquina de estados en cada estado
  begin
    case STD_Act is
      when Idle =>
        FSM_Val <= '0';
        dato_rx_ok <= '0';
        if RX = '0' then
          error_recep <= '0';
        end if;
      when Receiving =>
        FSM_PR <= '1';
        FSM_CntB <= '1';
        FSM_CntM <= '1';
      when Verifying =>
        FSM_PR <= '0';
        FSM_CntB <= '0';
        FSM_CntM <= '0';
      when Error =>
        error_recep <= '1';
      when Outputing =>
        FSM_Val <= '1';
        dato_rx_ok <= '1';
      end case;
  end process;
end rtl;