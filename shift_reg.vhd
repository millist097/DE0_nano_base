library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shift_reg is 
port( in_vec : in std_logic_vector(9 downto 0);
		latch : in std_logic;
		shift : in std_logic;
		out_vec : out std_logic_vector(9 downto 0);
		shift_out : out std_logic);
end entity shift_reg;

architecture shift_reg_behave of shift_reg is
	signal partialProduct : std_logic_vector(9 downto 0);

begin
	latchLogic: process( latch) is
	begin
		if rising_edge(latch) then
			partialProduct(9 downto 0) <= in_vec(9 downto 0);
		end if;
	end process latchLogic;

	process(latch) is
	begin
		if rising_edge(shift) then
			partialProduct(8 downto 0) <= partialProduct(9 downto 1);
			shift_out <= partialProduct(0);
		end if;
	end process;
	
	out_vec <= partialProduct;
end architecture shift_reg_behave;
