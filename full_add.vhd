library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_add is 
	Port( res, carry_out : out std_logic;
			a, b, carry_in : in std_logic);
end entity full_add;

architecture full_add_behave of full_add is

begin
	res <= (a xor b) xor carry_in;
	carry_out <= (a and carry_in) or ( a and b) or (b and carry_in);
end architecture full_add_behave;