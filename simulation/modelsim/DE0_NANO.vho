-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/22/2018 18:13:46"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE0_NANO IS
    PORT (
	in_1 : IN std_logic_vector(3 DOWNTO 0);
	in_2 : IN std_logic_vector(3 DOWNTO 0);
	b_in : IN std_logic;
	res_out : BUFFER std_logic_vector(3 DOWNTO 0);
	b_out : BUFFER std_logic
	);
END DE0_NANO;

-- Design Ports Information
-- res_out[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_out[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_out[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_out[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_1[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_2[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE0_NANO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_in_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b_in : std_logic;
SIGNAL ww_res_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b_out : std_logic;
SIGNAL \res_out[0]~output_o\ : std_logic;
SIGNAL \res_out[1]~output_o\ : std_logic;
SIGNAL \res_out[2]~output_o\ : std_logic;
SIGNAL \res_out[3]~output_o\ : std_logic;
SIGNAL \b_out~output_o\ : std_logic;
SIGNAL \in_2[0]~input_o\ : std_logic;
SIGNAL \in_1[0]~input_o\ : std_logic;
SIGNAL \b_in~input_o\ : std_logic;
SIGNAL \fs0|Add1~0_combout\ : std_logic;
SIGNAL \in_1[1]~input_o\ : std_logic;
SIGNAL \in_2[1]~input_o\ : std_logic;
SIGNAL \fs0|Add1~1_combout\ : std_logic;
SIGNAL \fs1|Add1~0_combout\ : std_logic;
SIGNAL \in_2[2]~input_o\ : std_logic;
SIGNAL \in_1[2]~input_o\ : std_logic;
SIGNAL \fs1|Add1~1_combout\ : std_logic;
SIGNAL \fs2|Add1~0_combout\ : std_logic;
SIGNAL \in_2[3]~input_o\ : std_logic;
SIGNAL \in_1[3]~input_o\ : std_logic;
SIGNAL \fs2|Add1~1_combout\ : std_logic;
SIGNAL \fs3|Add1~0_combout\ : std_logic;
SIGNAL \fs3|Add1~1_combout\ : std_logic;

BEGIN

ww_in_1 <= in_1;
ww_in_2 <= in_2;
ww_b_in <= b_in;
res_out <= ww_res_out;
b_out <= ww_b_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X29_Y0_N2
\res_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fs0|Add1~0_combout\,
	devoe => ww_devoe,
	o => \res_out[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\res_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fs1|Add1~0_combout\,
	devoe => ww_devoe,
	o => \res_out[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\res_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fs2|Add1~0_combout\,
	devoe => ww_devoe,
	o => \res_out[2]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\res_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fs3|Add1~0_combout\,
	devoe => ww_devoe,
	o => \res_out[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\b_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fs3|Add1~1_combout\,
	devoe => ww_devoe,
	o => \b_out~output_o\);

-- Location: IOIBUF_X0_Y7_N8
\in_2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(0),
	o => \in_2[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\in_1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(0),
	o => \in_1[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\b_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in,
	o => \b_in~input_o\);

-- Location: LCCOMB_X14_Y2_N16
\fs0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fs0|Add1~0_combout\ = \in_2[0]~input_o\ $ (\in_1[0]~input_o\ $ (\b_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_2[0]~input_o\,
	datac => \in_1[0]~input_o\,
	datad => \b_in~input_o\,
	combout => \fs0|Add1~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\in_1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(1),
	o => \in_1[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\in_2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(1),
	o => \in_2[1]~input_o\);

-- Location: LCCOMB_X14_Y2_N10
\fs0|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fs0|Add1~1_combout\ = (\in_2[0]~input_o\ & ((\b_in~input_o\) # (!\in_1[0]~input_o\))) # (!\in_2[0]~input_o\ & (!\in_1[0]~input_o\ & \b_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_2[0]~input_o\,
	datac => \in_1[0]~input_o\,
	datad => \b_in~input_o\,
	combout => \fs0|Add1~1_combout\);

-- Location: LCCOMB_X14_Y2_N12
\fs1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fs1|Add1~0_combout\ = \in_1[1]~input_o\ $ (\in_2[1]~input_o\ $ (\fs0|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_1[1]~input_o\,
	datab => \in_2[1]~input_o\,
	datad => \fs0|Add1~1_combout\,
	combout => \fs1|Add1~0_combout\);

-- Location: IOIBUF_X0_Y5_N22
\in_2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(2),
	o => \in_2[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\in_1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(2),
	o => \in_1[2]~input_o\);

-- Location: LCCOMB_X14_Y2_N6
\fs1|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fs1|Add1~1_combout\ = (\in_1[1]~input_o\ & (\in_2[1]~input_o\ & \fs0|Add1~1_combout\)) # (!\in_1[1]~input_o\ & ((\in_2[1]~input_o\) # (\fs0|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_1[1]~input_o\,
	datab => \in_2[1]~input_o\,
	datad => \fs0|Add1~1_combout\,
	combout => \fs1|Add1~1_combout\);

-- Location: LCCOMB_X14_Y2_N8
\fs2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fs2|Add1~0_combout\ = \in_2[2]~input_o\ $ (\in_1[2]~input_o\ $ (\fs1|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_2[2]~input_o\,
	datab => \in_1[2]~input_o\,
	datad => \fs1|Add1~1_combout\,
	combout => \fs2|Add1~0_combout\);

-- Location: IOIBUF_X0_Y16_N8
\in_2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_2(3),
	o => \in_2[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\in_1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_1(3),
	o => \in_1[3]~input_o\);

-- Location: LCCOMB_X14_Y2_N2
\fs2|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fs2|Add1~1_combout\ = (\in_2[2]~input_o\ & ((\fs1|Add1~1_combout\) # (!\in_1[2]~input_o\))) # (!\in_2[2]~input_o\ & (!\in_1[2]~input_o\ & \fs1|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_2[2]~input_o\,
	datab => \in_1[2]~input_o\,
	datad => \fs1|Add1~1_combout\,
	combout => \fs2|Add1~1_combout\);

-- Location: LCCOMB_X14_Y2_N4
\fs3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fs3|Add1~0_combout\ = \in_2[3]~input_o\ $ (\in_1[3]~input_o\ $ (\fs2|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_2[3]~input_o\,
	datac => \in_1[3]~input_o\,
	datad => \fs2|Add1~1_combout\,
	combout => \fs3|Add1~0_combout\);

-- Location: LCCOMB_X14_Y2_N22
\fs3|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fs3|Add1~1_combout\ = (\in_2[3]~input_o\ & ((\fs2|Add1~1_combout\) # (!\in_1[3]~input_o\))) # (!\in_2[3]~input_o\ & (!\in_1[3]~input_o\ & \fs2|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_2[3]~input_o\,
	datac => \in_1[3]~input_o\,
	datad => \fs2|Add1~1_combout\,
	combout => \fs3|Add1~1_combout\);

ww_res_out(0) <= \res_out[0]~output_o\;

ww_res_out(1) <= \res_out[1]~output_o\;

ww_res_out(2) <= \res_out[2]~output_o\;

ww_res_out(3) <= \res_out[3]~output_o\;

ww_b_out <= \b_out~output_o\;
END structure;


