library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity booth_multiplier is 
	Port( num, multitiplcand : in std_logic_vector(4 downto 0);
			trigger : in std_logic;
			busy : out std_logic := '0';
			result : out std_logic_vector(9 downto 0):= "0000000000");
end entity booth_multiplier;

architecture behave of booth_multiplier is
	type states is ( ready, start, crunch, asr, finish);
	signal count   : unsigned (3 downto 0);
	signal state   : states := ready;
	signal num_in  : std_logic_vector( 4 downto 0);
	signal Qn      : std_logic;
	signal partProd: std_logic_vector( 9 downto 0);
	
	
	component shift_reg is
		port (in_vec    : in std_logic_vector(9 downto 0);
				latch     : in std_logic;
				shift     : in std_logic;
				out_vec   : out std_logic_vector(9 downto 0);
				shift_out : out std_logic);
	end component shift_reg;
	
	component fivebit_adder is
		port (in_1, in_2 : in std_logic_vector(4 downto 0);
				c_in : in std_logic;
				res_out : out std_logic_vector( 4 downto 0);
				c_out : out std_logic);
	end component fivebit_adder;
	
	component mux_two_port is
		port (a,b : in std_logic_vector( 4 downto 0);
				channel_sel : in std_logic;
				mux_out : out std_logic_vector(4 downto 0));
	end component mux_two_port;
	
	begin
	
	fa5b : component fivebit_adder port map
				(add_num1, add_num2, add_carry, add_result, add_carry_out);
	mux : component mux_two_port port map	
				( mux_inVec1, mux_inVec2, mux_chan_sel, mux_vec_out);
	shiftReg : component shift_reg port map
				( in_vec(9 downto 5)=> mux_vec_out, in_vec( 4 downto 0)=> partProd(4 downto 0), latch=> shift_reg_latch, shift=> shift_reg_shift,
				  out_vec=>partProd, shift_out=>Qn);
				  
	channnel_selection_logic :process
	begin
		mux_chan_sel <= (Qn XOR partProd(0)) and Qn;
	end process channel_selection_logic;
	
	
	latch_input : process(trigger) is
	begin
		if( rising_edge(trigger) and current_state = ready) then
			busy <= high;
			temp_in <= num;
			temp_mult <= multitiplcand;
			next_state <= crunch;
		end if;
	end process latch_input;
	
	control_logic : process(clk)
	begin
		
		if( rising_edge(clk))then	
			if(Qn XOR partProd(0))then	
				latch <= HIGH;
			end if;
		end if;
		
		if( falling_edge(clk)) then
			latch <= LOW;
			shift <= HIGH;
			if( count = 0) then
				busy <= LOW;
				result(9 downto 0 ) <= partProd(9 downto 0);
			else	
				count <= count - 1;
			end if;
		end if;
					
	
end architecture behave;