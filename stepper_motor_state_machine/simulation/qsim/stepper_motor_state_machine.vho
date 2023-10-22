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

-- DATE "10/17/2023 20:49:34"

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

ENTITY 	stepper_motor_state_machine IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	dir_btn : IN std_logic;
	A : OUT std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic
	);
END stepper_motor_state_machine;

ARCHITECTURE structure OF stepper_motor_state_machine IS
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
SIGNAL ww_dir_btn : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dir_btn~input_o\ : std_logic;
SIGNAL \dir~0_combout\ : std_logic;
SIGNAL \dir~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \current_state.sOff~q\ : std_logic;
SIGNAL \next_state.sD_89~combout\ : std_logic;
SIGNAL \current_state.sD~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \next_state.sC_97~combout\ : std_logic;
SIGNAL \current_state.sC~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \next_state.sB_105~combout\ : std_logic;
SIGNAL \current_state.sB~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \next_state.sA_113~combout\ : std_logic;
SIGNAL \current_state.sA~q\ : std_logic;
SIGNAL \ALT_INV_current_state.sB~q\ : std_logic;
SIGNAL \ALT_INV_current_state.sC~q\ : std_logic;
SIGNAL \ALT_INV_current_state.sD~q\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_dir~q\ : std_logic;
SIGNAL \ALT_INV_current_state.sOff~q\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.sA_113~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.sB_105~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.sC_97~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.sD_89~combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_dir_btn <= dir_btn;
A <= ww_A;
B <= ww_B;
C <= ww_C;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_current_state.sB~q\ <= NOT \current_state.sB~q\;
\ALT_INV_current_state.sC~q\ <= NOT \current_state.sC~q\;
\ALT_INV_current_state.sD~q\ <= NOT \current_state.sD~q\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_dir~q\ <= NOT \dir~q\;
\ALT_INV_current_state.sOff~q\ <= NOT \current_state.sOff~q\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_next_state.sA_113~combout\ <= NOT \next_state.sA_113~combout\;
\ALT_INV_next_state.sB_105~combout\ <= NOT \next_state.sB_105~combout\;
\ALT_INV_next_state.sC_97~combout\ <= NOT \next_state.sC_97~combout\;
\ALT_INV_next_state.sD_89~combout\ <= NOT \next_state.sD_89~combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

\A~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.sA~q\,
	devoe => ww_devoe,
	o => \A~output_o\);

\B~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.sB~q\,
	devoe => ww_devoe,
	o => \B~output_o\);

\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.sC~q\,
	devoe => ww_devoe,
	o => \C~output_o\);

\D~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.sD~q\,
	devoe => ww_devoe,
	o => \D~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\dir_btn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir_btn,
	o => \dir_btn~input_o\);

\dir~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dir~0_combout\ = !\dir~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir~q\,
	combout => \dir~0_combout\);

dir : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dir_btn~input_o\,
	d => \dir~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir~q\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\current_state.sB~q\ & (!\current_state.sD~q\ & (!\current_state.sC~q\ $ (!\dir~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.sB~q\,
	datab => \ALT_INV_current_state.sC~q\,
	datac => \ALT_INV_current_state.sD~q\,
	datad => \ALT_INV_dir~q\,
	combout => \Selector0~0_combout\);

\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\current_state.sOff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.sOff~q\);

\next_state.sD_89\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.sD_89~combout\ = ( \next_state.sD_89~combout\ & ( \current_state.sOff~q\ & ( \Selector0~0_combout\ ) ) ) # ( !\next_state.sD_89~combout\ & ( \current_state.sOff~q\ & ( \Selector0~0_combout\ ) ) ) # ( \next_state.sD_89~combout\ & ( 
-- !\current_state.sOff~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector0~0_combout\,
	datae => \ALT_INV_next_state.sD_89~combout\,
	dataf => \ALT_INV_current_state.sOff~q\,
	combout => \next_state.sD_89~combout\);

\current_state.sD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \next_state.sD_89~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.sD~q\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\current_state.sB~q\ & ((!\current_state.sD~q\) # (!\dir~q\))) # (\current_state.sB~q\ & ((\dir~q\) # (\current_state.sD~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110110111101101111011011110110111101101111011011110110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.sB~q\,
	datab => \ALT_INV_current_state.sD~q\,
	datac => \ALT_INV_dir~q\,
	combout => \Selector1~0_combout\);

\next_state.sC_97\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.sC_97~combout\ = ( \next_state.sC_97~combout\ & ( \current_state.sOff~q\ & ( !\Selector1~0_combout\ ) ) ) # ( !\next_state.sC_97~combout\ & ( \current_state.sOff~q\ & ( !\Selector1~0_combout\ ) ) ) # ( \next_state.sC_97~combout\ & ( 
-- !\current_state.sOff~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector1~0_combout\,
	datae => \ALT_INV_next_state.sC_97~combout\,
	dataf => \ALT_INV_current_state.sOff~q\,
	combout => \next_state.sC_97~combout\);

\current_state.sC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \next_state.sC_97~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.sC~q\);

\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ((!\current_state.sC~q\ $ (!\dir~q\)) # (\current_state.sD~q\)) # (\current_state.sB~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111011111011111111101111101111111110111110111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.sB~q\,
	datab => \ALT_INV_current_state.sC~q\,
	datac => \ALT_INV_current_state.sD~q\,
	datad => \ALT_INV_dir~q\,
	combout => \Selector3~0_combout\);

\next_state.sB_105\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.sB_105~combout\ = ( \next_state.sB_105~combout\ & ( \current_state.sOff~q\ & ( !\Selector3~0_combout\ ) ) ) # ( !\next_state.sB_105~combout\ & ( \current_state.sOff~q\ & ( !\Selector3~0_combout\ ) ) ) # ( \next_state.sB_105~combout\ & ( 
-- !\current_state.sOff~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector3~0_combout\,
	datae => \ALT_INV_next_state.sB_105~combout\,
	dataf => \ALT_INV_current_state.sOff~q\,
	combout => \next_state.sB_105~combout\);

\current_state.sB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \next_state.sB_105~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.sB~q\);

\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\current_state.sB~q\ & ((!\current_state.sD~q\) # (\dir~q\))) # (\current_state.sB~q\ & ((!\dir~q\) # (\current_state.sD~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101111011011110110111101101111011011110110111101101111011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.sB~q\,
	datab => \ALT_INV_current_state.sD~q\,
	datac => \ALT_INV_dir~q\,
	combout => \Selector5~0_combout\);

\next_state.sA_113\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.sA_113~combout\ = ( \next_state.sA_113~combout\ & ( \current_state.sOff~q\ & ( !\Selector5~0_combout\ ) ) ) # ( !\next_state.sA_113~combout\ & ( \current_state.sOff~q\ & ( !\Selector5~0_combout\ ) ) ) # ( \next_state.sA_113~combout\ & ( 
-- !\current_state.sOff~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector5~0_combout\,
	datae => \ALT_INV_next_state.sA_113~combout\,
	dataf => \ALT_INV_current_state.sOff~q\,
	combout => \next_state.sA_113~combout\);

\current_state.sA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \next_state.sA_113~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.sA~q\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;
END structure;


