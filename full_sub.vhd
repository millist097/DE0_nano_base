library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_sub is 
	Port( res, borrow_out : out std_logic;
			a, b, borrow_in : in std_logic);
end entity full_sub;

architecture full_sub_behave of full_sub is
	signal sub_res : unsigned(1 downto 0);
begin
	sub_res <= (b"0" & a) - (b"0" & b) - (b"0" & borrow_in);
	borrow_out <= sub_res(1);
	res <= sub_res(0);
end architecture full_sub_behave;