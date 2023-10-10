-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "09/11/2023 21:56:08"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	counter IS
    PORT (
	clk : IN std_logic;
	digit : OUT STD.STANDARD.integer range 0 TO 9
	);
END counter;

ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_digit : std_logic_vector(3 DOWNTO 0);
SIGNAL \digit[0]~output_o\ : std_logic;
SIGNAL \digit[1]~output_o\ : std_logic;
SIGNAL \digit[2]~output_o\ : std_logic;
SIGNAL \digit[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \count:temp[0]~0_combout\ : std_logic;
SIGNAL \count:temp[0]~q\ : std_logic;
SIGNAL \digit[0]~0_combout\ : std_logic;
SIGNAL \digit[0]~reg0_q\ : std_logic;
SIGNAL \count:temp[1]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count:temp[2]~q\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \count:temp[3]~q\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \digit[1]~reg0_q\ : std_logic;
SIGNAL \digit[2]~reg0_q\ : std_logic;
SIGNAL \digit[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_count:temp[3]~q\ : std_logic;
SIGNAL \ALT_INV_count:temp[2]~q\ : std_logic;
SIGNAL \ALT_INV_count:temp[1]~q\ : std_logic;
SIGNAL \ALT_INV_count:temp[0]~q\ : std_logic;

BEGIN

ww_clk <= clk;
digit <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_digit));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_count:temp[3]~q\ <= NOT \count:temp[3]~q\;
\ALT_INV_count:temp[2]~q\ <= NOT \count:temp[2]~q\;
\ALT_INV_count:temp[1]~q\ <= NOT \count:temp[1]~q\;
\ALT_INV_count:temp[0]~q\ <= NOT \count:temp[0]~q\;

\digit[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[0]~reg0_q\,
	devoe => ww_devoe,
	o => \digit[0]~output_o\);

\digit[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[1]~reg0_q\,
	devoe => ww_devoe,
	o => \digit[1]~output_o\);

\digit[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[2]~reg0_q\,
	devoe => ww_devoe,
	o => \digit[2]~output_o\);

\digit[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \digit[3]~reg0_q\,
	devoe => ww_devoe,
	o => \digit[3]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\count:temp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count:temp[0]~0_combout\ = !\count:temp[0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count:temp[0]~q\,
	combout => \count:temp[0]~0_combout\);

\count:temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count:temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[0]~q\);

\digit[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit[0]~0_combout\ = !\count:temp[0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count:temp[0]~q\,
	combout => \digit[0]~0_combout\);

\digit[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[0]~reg0_q\);

\count:temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[1]~q\);

\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = !\count:temp[2]~q\ $ (((!\count:temp[0]~q\) # (!\count:temp[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count:temp[0]~q\,
	datab => \ALT_INV_count:temp[1]~q\,
	datac => \ALT_INV_count:temp[2]~q\,
	combout => \Add0~0_combout\);

\count:temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[2]~q\);

\temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = (!\count:temp[0]~q\ & (((\count:temp[3]~q\)))) # (\count:temp[0]~q\ & ((!\count:temp[1]~q\ & (\count:temp[2]~q\ & \count:temp[3]~q\)) # (\count:temp[1]~q\ & (!\count:temp[2]~q\ $ (!\count:temp[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110111110000000011011111000000001101111100000000110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count:temp[0]~q\,
	datab => \ALT_INV_count:temp[1]~q\,
	datac => \ALT_INV_count:temp[2]~q\,
	datad => \ALT_INV_count:temp[3]~q\,
	combout => \temp~1_combout\);

\count:temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \temp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[3]~q\);

\temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = (!\count:temp[0]~q\ & (\count:temp[1]~q\)) # (\count:temp[0]~q\ & (!\count:temp[1]~q\ & ((!\count:temp[3]~q\) # (\count:temp[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000100110011001100010011001100110001001100110011000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count:temp[0]~q\,
	datab => \ALT_INV_count:temp[1]~q\,
	datac => \ALT_INV_count:temp[2]~q\,
	datad => \ALT_INV_count:temp[3]~q\,
	combout => \temp~0_combout\);

\digit[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[1]~reg0_q\);

\digit[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[2]~reg0_q\);

\digit[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \temp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[3]~reg0_q\);

ww_digit(0) <= \digit[0]~output_o\;

ww_digit(1) <= \digit[1]~output_o\;

ww_digit(2) <= \digit[2]~output_o\;

ww_digit(3) <= \digit[3]~output_o\;
END structure;


