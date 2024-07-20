LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY dual_priority_encoder_tb IS END dual_priority_encoder_tb;
 
ARCHITECTURE behavior OF dual_priority_encoder_tb IS 
  
    COMPONENT dual_priority_encoder
    PORT(input : IN  std_logic_vector(7 downto 0);
         output1,output2 : buffer  std_logic_vector(2 downto 0));
    END COMPONENT;
    
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal output1,output2 : std_logic_vector(2 downto 0);
 
BEGIN
 
   uut: dual_priority_encoder PORT MAP (input => input,output1 => output1,output2 => output2);

input <= "01100000" , "10000010" after 20ns , "00110100" after 40ns , "10101010" after 60ns;

END;
