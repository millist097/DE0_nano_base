library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux_two_port is 
	Port( a, b    : in std_logic_vector( 4 downto 0);
			channel_sel : in std_logic;
			mux_out : out std_logic_vector( 4 downto 0));
end entity mux_two_port;

architecture mux_behave of mux_two_port is

begin
	mux_out(4) <= (a(4) and channel_sel ) or ( b(4) and not channel_sel);
	mux_out(3) <= (a(3) and channel_sel ) or ( b(3) and not channel_sel);
	mux_out(2) <= (a(2) and channel_sel ) or ( b(2) and not channel_sel);
	mux_out(1) <= (a(1) and channel_sel ) or ( b(1) and not channel_sel);
	mux_out(0) <= (a(0) and channel_sel ) or ( b(0) and not channel_sel);

end architecture mux_behave;