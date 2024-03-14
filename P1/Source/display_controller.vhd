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

  --constant CTE_ANDS      : integer := 100000;   -- para la implementación
  constant CTE_ANDS      : integer := 200;  -- para la simulación
  signal   counter_reg : integer range 0 to CTE_ANDS-1;
  signal   prescaler_out :std_logic;
  signal   reg_desp: std_logic_vector(31 downto 0);
  signal   cont_out: unsigned (2 downto 0);
  signal   multiplexor_out: std_logic_vector(3 downto 0);
  signal   dec_hexTo7_out: std_logic_vector(6 downto 0);
  signal   cc_out: std_logic;
  signal   dec_3To8_out :std_logic_vector(7 downto 0);
    
begin  

prescaler:  process (CLK, RST)
    begin  -- process
        if rst = '1' then
            counter_reg   <= 0;
        elsif clk'event and clk = '1' then
            if counter_reg = CTE_ANDS-1 then
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
            if counter_reg = CTE_ANDS-1 then
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
            cont_out<="000";
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
            when others => 
            multiplexor_out <=reg_desp(31 downto 28);
        end case;
    end process;

decodificadorHexTo7: process(multiplexor_out)
    begin  
        case multiplexor_out is
           when x"0" =>
                dec_hexTo7_out <= "0000001";
            when x"1" =>
                dec_hexTo7_out <= "1001111";
            when x"2" =>
                dec_hexTo7_out <= "0010010";
            when x"3" =>
                dec_hexTo7_out <= "0000110";
            when x"4" =>
                dec_hexTo7_out <= "1001100";
            when x"5" =>
                dec_hexTo7_out <= "0100100";
            when x"6" =>
                dec_hexTo7_out <= "0100000";
            when x"7" =>
                dec_hexTo7_out <= "0001111";
            when x"8" =>
                dec_hexTo7_out <= "0000000";
            when x"9" =>
                dec_hexTo7_out <= "0000100";
            when x"A" =>
                dec_hexTo7_out <= "0001000";
            when x"B" =>
                dec_hexTo7_out <= "1100000";
            when x"C" =>
                dec_hexTo7_out <= "0110001";
            when x"D" =>
                dec_hexTo7_out <= "1000010";
            when x"E" =>
                dec_hexTo7_out <= "0110000";
            when x"F" =>
                dec_hexTo7_out <= "0111000";
            when others =>
                dec_hexTo7_out <= "1111111";
        end case;
    end process;
decodificador3a8:process(cont_out)
    begin
        case cont_out is
            when "000"=>
                dec_3To8_out <= "00000001";
            when "001"=>
                dec_3To8_out <= "00000010";
            when "010"=>
                dec_3To8_out <= "00000100";
            when "011"=>
                dec_3To8_out <= "00001000";
            when "100"=>
                dec_3To8_out <= "00010000";
            when "101"=>
                dec_3To8_out <= "00100000";
            when "110"=>
                dec_3To8_out <= "01000000";
            when "111"=>
                dec_3To8_out <= "10000000";
            when others =>
                dec_3To8_out <= "00000000"; 
        end case;
end process;

cc_out<= '1' when cont_out rem 2=0 else'0';


process (CLK, RST) --Register SEG_AG
    begin
    if RST = '1' then
        SEG_AG <= "0000000";
    elsif CLK'event and CLK = '1' then
        SEG_AG <= dec_hexTo7_out; 
    end if;
end process;


process (CLK, RST) --Register DP
    begin
    if RST = '1' then
        DP <= '0';
    elsif CLK'event and CLK = '1' then
        DP <= CC_out; 
    end if;
end process;


process (CLK, RST) --Register AND_70
    begin
    if RST = '1' then
        AND_70 <= "00000000";
    elsif CLK'event and CLK = '1' then
        AND_70 <= dec_3To8_out; 
    end if;
end process;

--circuitoCombinacional:process(cont_out)
--    begin
--        if cont_out rem 2= 0 then
--            DP<='1';
--        else
--            DP<='0';
--        end if;
--    end process;
end rtl;


