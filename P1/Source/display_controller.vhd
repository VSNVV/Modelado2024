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
-- Declaracion de sennales
-- constant CTE_ANDS      : integer := 100000;   -- para la implementacion
constant CTE_ANDS  : integer := 200;  -- para la simulacion
signal CntReg : integer range 0 to CTE_ANDS - 1;
signal RDOut : std_logic_vector(31 downto 0); -- Sennal de salida del Registro de Desplazamiento
signal PROut : std_logic; -- Sennal de salida del Prescaler
signal CntOut : unsigned(2 downto 0); -- Sennal de salida del Contador
signal MuxOut : std_logic_vector(3 downto 0); -- Sennal de salida del Multiplexor
signal DecHexOut : std_logic_vector(6 downto 0); -- Sennal de salida del decodificador hexadecimal
signal CCOut : std_logic; -- Sennal de salida del Circuito Combinacional
signal Dec3To8Out : std_logic_vector(7 downto 0); -- Sennal de salida del Decodificador de 3 a 8

begin
  process(DATO_RX, DATO_RX_OK, CLK, RST) -- Proceso del Registro de Desplazamiento
  begin
    if clk'event and clk = '1' then
      if DATO_RX_OK = '1' then
        RDOut <= RDOut(23 downto 0) & DATO_RX;
      end if;
    elsif RST = '1' then
      RDOut <= (others => '0');
    end if;
  end process;

  process(CLK, RST) -- Proceso del Prescaler
  begin
    if RST = '1' then
      CntReg <= 0;
    elsif clk'event and clk ='1' then
      if CntReg = CTE_ANDS - 1 then
        CntReg <= 0;
      else
        CntReg <= CntReg + 1;
      end if;
    end if;
  end process;

  process (CLK, RST) -- Proceso del Contador del Prescaler
  begin
    if RST = '1' then
      PROut <= '0';
    elsif CLK'event and CLK = '1' then
      if CntReg = CTE_ANDS - 1 then
        PROut <= '1';
      else
        PROut <= '0';
      end if;
    end if;
  end process;

  process(PROut, CLK, RST) -- Proceso del Contador
  begin
    if RST = '1' then
      CntOut <= "000";
    elsif CLK'event and CLK = '1' then
      if PROut = '1' then
        if CntOut = "111" then
          CntOut <= "000";
        else
          CntOut <= CntOut + 1;
        end if;
      end if;
    end if;
  end process;

  process(RDOut, CntOut) -- Proceso del Multiplexor
  begin
    case CntOut is
      when "000" =>
        MuxOut <= RDOut(3 downto 0);
      when "001" =>
        MuxOut <= RDOut(7 downto 4);
      when "010" =>
        MuxOut <= RDOut(11 downto 8);
      when "011" =>
        MuxOut <= RDOut(15 downto 12);
      when "100" =>
        MuxOut <= RDOut(19 downto 16);
      when "101" =>
        MuxOut <= RDOut(23 downto 20);
      when "110" =>
        MuxOut <= RDOut(27 downto 24);
      when "111" =>
        MuxOut <= RDOut(31 downto 28);
      when others =>
        MuxOut <= RDOut(31 downto 28);
    end case;
  end process;

  process(MuxOut) -- Proceso del Decodificador de Hexadecimal a 7 segmentos
  begin
    case MuxOut is
      when x"1" =>
        DecHexOut <= "0000001"; -- Numero 1
      when x"2" =>
        DecHexOut <= "1001111"; -- Numero 2
      when x"3" =>
        DecHexOut <= "0010010"; -- Numero 3
      when x"4" =>
        DecHexOut <= "1001100"; -- Numero 4
      when x"5" =>
        DecHexOut <= "0100100"; -- Numero 5
      when x"6" =>
        DecHexOut <= "0100000"; -- Numero 6
      when x"7" =>
        DecHexOut <= "0001111"; -- Numero 7
      when x"8" =>
        DecHexOut <= "0000000"; -- Numero 8
      when x"9" =>
        DecHexOut <= "0000100"; -- Numero 9
      when x"A" =>
        DecHexOut <= "0001000"; -- Letra A
      when x"B" =>
        DecHexOut <= "1100000"; -- Letra B
      when x"C" =>
        DecHexOut <= "0110001"; -- Letra C
      when x"D" =>
        DecHexOut <= "1000010"; -- Letra D
      when x"E" =>
        DecHexOut <= "0110000"; -- Letra E
      when x"F" =>
        DecHexOut <= "0111000"; -- Letra F
      when others =>
        DecHexOut <= "1111111"; -- Display Apagado
    end case;
  end process;

  process(DecHexOut, CLK, RST) -- Proceso del Registro SEG_AG (Biestable tipo D)
  begin
    if RST = '1' then
      SEG_AG <= "0000000"; -- Como es anodo comun, estarian todos los leds apagados
    elsif clk'event and clk = '1' then
      SEG_AG <= DecHexOut;
    end if;
  end process;

  process(CntOut) -- Proceso del Circuito Combinacional
  begin
    if CntOut rem 2 = 0 then
      CCOut <= '1';
    else
      CCOut <= '0';
    end if;
  end process;

  process(CCOut, CLK, RST) -- Proceos del Registro DP (Biestable tipo D)
  begin
    if RST = '1' then
      DP <= '0';
    elsif CLK'event and CLK = '1' then
      DP <= CCOut;
    end if;
  end process;

  process(CntOut) -- Proceso del Decodificador de 3 a 8
  begin
    case CntOut is
      when "000" =>
        Dec3To8Out <= "11111110";
      when "001" =>
        Dec3To8Out <= "11111101";
      when "010" =>
        Dec3To8Out <= "11111011";
      when "011" =>
        Dec3To8Out <= "11110111";
      when "100" =>
        Dec3To8Out <= "11101111";
      when "101" =>
        Dec3To8Out <= "11011111";
      when "110" =>
        Dec3To8Out <= "10111111";
      when "111" =>
        Dec3To8Out <= "01111111";
      when others =>
        Dec3To8Out <= "11111111";
    end case;
  end process;

  process(Dec3To8Out, CLK, RST) -- Proceso del Registro AND_70 (Biestable tipo D)
  begin
    if RST = '1' then
      AND_70 <= "00000000";
    elsif CLK'event and CLK = '1' then
      AND_70 <= Dec3To8Out;
    end if;
  end process;

end rtl;