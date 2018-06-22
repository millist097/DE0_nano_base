library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fivebit_adder is 
port( in_1, in_2 : in std_logic_vector(4 downto 0);
		c_in : in std_logic;
		res_out : out std_logic_vector(4 downto 0);
		c_out : out std_logic);
end entity fivebit_adder;

architecture behave_fivebit_adder of fivebit_adder is
	signal carry_3,carry_2,carry_1,carry_0 : std_logic;

	component full_add is 
		port( res, carry_out : out std_logic;
				a, b, carry_in : in std_logic);
	end component full_add;
	

	
begin
	fs0 : component full_add port map (res_out(0),carry_0,
					in_1(0),in_2(0),c_in);
	fs1 : component full_add port map (res_out(1),carry_1,
					in_1(1),in_2(1),carry_0);
	fs2 : component full_add port map (res_out(2),carry_2,
					in_1(2),in_2(2),carry_1);
	fs3 : component full_add port map (res_out(3),carry_3,
					in_1(3),in_2(3),carry_2);
	fs4 : component full_add port map (res_out(4),c_out,
					in_1(4),in_2(4),carry_3);
end architecture behave_fivebit_adder;
