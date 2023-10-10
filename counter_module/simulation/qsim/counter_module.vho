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

-- DATE "10/10/2023 19:26:09"

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
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_module IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	count : OUT std_logic_vector(2 DOWNTO 0)
	);
END counter_module;

ARCHITECTURE structure OF counter_module IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \tmp_count[0]~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \tmp_count~1_combout\ : std_logic;
SIGNAL \tmp_count~0_combout\ : std_logic;
SIGNAL tmp_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL ALT_INV_tmp_count : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
ALT_INV_tmp_count(2) <= NOT tmp_count(2);
ALT_INV_tmp_count(1) <= NOT tmp_count(1);
ALT_INV_tmp_count(0) <= NOT tmp_count(0);

\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_count(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_count(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

\count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_count(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\tmp_count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_count[0]~2_combout\ = !tmp_count(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_count(0),
	combout => \tmp_count[0]~2_combout\);

\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\tmp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tmp_count[0]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_count(0));

\tmp_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_count~1_combout\ = (!tmp_count(0) & ((tmp_count(2)))) # (tmp_count(0) & (tmp_count(1) & !tmp_count(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000011010000110100001101000011010000110100001101000011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_count(0),
	datab => ALT_INV_tmp_count(1),
	datac => ALT_INV_tmp_count(2),
	combout => \tmp_count~1_combout\);

\tmp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tmp_count~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_count(2));

\tmp_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_count~0_combout\ = (!tmp_count(0) & (tmp_count(1))) # (tmp_count(0) & (!tmp_count(1) & !tmp_count(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001001100010011000100110001001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_count(0),
	datab => ALT_INV_tmp_count(1),
	datac => ALT_INV_tmp_count(2),
	combout => \tmp_count~0_combout\);

\tmp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tmp_count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_count(1));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;
END structure;


