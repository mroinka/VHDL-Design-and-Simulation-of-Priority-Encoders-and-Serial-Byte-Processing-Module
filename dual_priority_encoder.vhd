library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dual_priority_encoder is
port(input : in std_logic_vector(7 downto 0);
output1,output2 : buffer std_logic_vector(2 downto 0));
end dual_priority_encoder;

architecture Behavioral of dual_priority_encoder is
signal y,i : std_logic_vector(7 downto 0);
signal a1,a2,b1,b2,b3,b4,c1,c2,d1,d2,d3,d4 : std_logic;
begin

a1 <= not input(6) nand input(5);
a2 <= input(4) or input(5) or input(6);

b1 <= not (not input(7) and not input(6) and a1 and not input(4));
b2 <= not a2 nand input(2);
b3 <= not a2 nand input(3);
b4 <= a2 or input(2) or not input(1);

output1(2) <= b1;
output1(1) <= not (not input(7) and not input(6) and b2 and b3);
output1(0) <= not (not input(7) and a1 and b4 and b3);

y(0) <= (not output1(2)) and (not output1(1)) and (not output1(0));
y(1) <= (not output1(2)) and (not output1(1)) and output1(0);
y(2) <= (not output1(2)) and output1(1) and (not output1(0));
y(3) <= (not output1(2)) and output1(1) and output1(0);
y(4) <= output1(2) and (not output1(1)) and (not output1(0));
y(5) <= output1(2) and (not output1(1)) and output1(0);
y(6) <= output1(2) and output1(1) and (not output1(0));
y(7) <= output1(2) and output1(1) and output1(0);

i(0) <= input(0) xor y(0);
i(1) <= input(1) xor y(1);
i(2) <= input(2) xor y(2);
i(3) <= input(3) xor y(3);
i(4) <= input(4) xor y(4);
i(5) <= input(5) xor y(5);
i(6) <= input(6) xor y(6);
i(7) <= input(7) xor y(7);

c1 <= not i(6) nand i(5);
c2 <= i(4) or i(5) or i(6);

d1 <= not (not i(7) and not i(6) and c1 and not i(4));
d2 <= not c2 nand i(2);
d3 <= not c2 nand i(3);
d4 <= c2 or i(2) or not i(1);

output2(2) <= d1;
output2(1) <= not (not i(7) and not i(6) and d2 and d3);
output2(0) <= not (not i(7) and c1 and d4 and d3);


end Behavioral;

