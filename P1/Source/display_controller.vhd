library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity display_controller is
  port(
       RST        : in  std_logic;
       CLK        : in  std_logic;
       DATO_RX_OK : in  std_logic;
       DATO_RX    : in  std_logic_vector(7 downto 0);
       DP         : out std_logic;
       SEG_AG     : out std_logic_vector(6 downto 0);  -- gfedcba
       AND_70     : out std_logic_vector(7 downto 0));
end display_controller;

architecture rtl of display_controller is

  constant CLKDIV      : integer := 5e6;   -- para la implementación
--  constant CLKDIV      : integer := 25;  -- para la simulación
  signal   counter_reg : integer range 0 to CLKDIV-1;
  signal   prescaler_out :std_logic;
  signal   reg_desp: std_logic_vector(31 downto 0);
  signal   cont_out: unsigned (2 downto 0);
  signal   multiplexor_out: std_logic_vector(3 downto 0);

    
begin  

prescaler:  process (CLK, RST)
    begin  -- process
        if rst = '1' then
            counter_reg   <= 0;
        elsif clk'event and clk = '1' then
            if counter_reg = CLKDIV-1 then
                counter_reg <= 0;
            else
            counter_reg <= counter_reg+1;
            end if;
        end if;
    end process;

cont_presscaler:  process (CLK, RST)
    begin  -- process
        if rst = '1' then
            prescaler_out   <= '0';
        elsif clk'event and clk = '1' then
            if counter_reg = CLKDIV-1 then
                prescaler_out <= '1';
            else
                prescaler_out <= '0';
            end if;
        end if;
    end process;

registro_desp: process(CLK, RST) --registro desplazamiento
    begin
        if(rst = '1') then
            reg_desp <= (others => '0');
        elsif(clk'event and clk = '1') then if(dato_rx_ok = '1') then
            reg_desp<= reg_desp(23 downto 0)& dato_rx;
            end if;
        end if;
    end process;
 
contador0a7 :process(prescaler_out)
    begin
        if cont_out = "111" then
            cont_out<="0";
        elsif (prescaler_out='1') then
            cont_out<=cont_out+1;
        end if;
    end process;
 
multiplexor8a1 : process(cont_out,reg_desp)
    begin
        case cont_out is
            when "000" => 
                multiplexor_out <=reg_desp(3 downto 0);
            when "001" => 
                multiplexor_out <=reg_desp(7 downto 4);
            when "010" => 
                multiplexor_out <=reg_desp(11 downto 8);
            when "011" => 
                multiplexor_out <=reg_desp(15 downto 12);
            when "100" =>   
                multiplexor_out <=reg_desp(19 downto 16);
            when "101" => 
                multiplexor_out <=reg_desp(23 downto 20);
            when "110" => 
                multiplexor_out <=reg_desp(27 downto 24);
            when "111" => 
                multiplexor_out <=reg_desp(31 downto 28);
        end case;
    end process;

decodificadorHexTo7: process(multiplexor_out)
    begin  
        case multiplexor_out is
           when x"0" =>
                SEG_AG <= "0000001";
            when x"1" =>
                SEG_AG <= "1001111";
            when x"2" =>
                SEG_AG <= "0010010";
            when x"3" =>
                SEG_AG <= "0000110";
            when x"4" =>
                SEG_AG <= "1001100";
            when x"5" =>
                SEG_AG <= "0100100";
            when x"6" =>
                SEG_AG <= "0100000";
            when x"7" =>
                SEG_AG <= "0001111";
            when x"8" =>
                SEG_AG <= "0000000";
            when x"9" =>
                SEG_AG <= "0000100";
            when x"A" =>
                SEG_AG <= "0001000";
            when x"B" =>
                SEG_AG <= "1100000";
            when x"C" =>
                SEG_AG <= "0110001";
            when x"D" =>
                SEG_AG <= "1000010";
            when x"E" =>
                SEG_AG <= "0110000";
            when x"F" =>
                SEG_AG <= "0111000";
            when others =>
                SEG_AG <= "1111111";
        end case;
    end process;
decodificador3a8:process(cont_out)
    begin
        case cont_out is
            when "000"=>
                AND_70 <= "00000001";
            when "001"=>
                AND_70 <= "00000010";
            when "010"=>
                AND_70 <= "00000100";
            when "011"=>
                AND_70 <= "00001000";
            when "100"=>
                AND_70 <= "00010000";
            when "101"=>
                AND_70 <= "00100000";
            when "110"=>
                AND_70 <= "01000000";
            when "111"=>
                AND_70 <= "10000000";
            when others =>
                AND_70 <= "00000000"; 
        end case;
end process;
circuitoCombinacional:process(cont_out)
    begin
        if cont_out rem 2= 0 then
            DP<='1';
        else
            DP<='0';
        end if;
    end process;
end rtl;


