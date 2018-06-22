library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DE0_NANO is 
port( in_1, in_2 : in std_logic_vector(3 downto 0);
		b_in : in std_logic;
		res_out : out std_logic_vector(3 downto 0);
		b_out : out std_logic);
end entity DE0_NANO;

architecture DE0_NANO_behave of DE0_NANO is
	signal carry_4,y,w,z : std_logic;

	component full_sub is 
		port( res, borrow_out : out std_logic;
				a, b, borrow_in : in std_logic);
	end component full_sub;
	

	
begin
	fs0 : component full_sub port map (res_out(0),z,
					in_1(0),in_2(0),b_in);
	fs1 : component full_sub port map (res_out(1),w,
					in_1(1),in_2(1),z);
	fs2 : component full_sub port map (res_out(2),y,
					in_1(2),in_2(2),w);
	fs3 : component full_sub port map (res_out(3),b_out,
					in_1(3),in_2(3),y);

end architecture DE0_NANO_behave;
