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

-- DATE "10/24/2023 21:27:27"

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
	A : BUFFER std_logic;
	B : BUFFER std_logic;
	C : BUFFER std_logic;
	D : BUFFER std_logic
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
SIGNAL \f1|Add0~57_sumout\ : std_logic;
SIGNAL \f1|Equal0~1_combout\ : std_logic;
SIGNAL \f1|Equal0~2_combout\ : std_logic;
SIGNAL \f1|Equal0~3_combout\ : std_logic;
SIGNAL \f1|Equal0~4_combout\ : std_logic;
SIGNAL \f1|Equal0~5_combout\ : std_logic;
SIGNAL \f1|Add0~58\ : std_logic;
SIGNAL \f1|Add0~61_sumout\ : std_logic;
SIGNAL \f1|Add0~62\ : std_logic;
SIGNAL \f1|Add0~65_sumout\ : std_logic;
SIGNAL \f1|Add0~66\ : std_logic;
SIGNAL \f1|Add0~69_sumout\ : std_logic;
SIGNAL \f1|Add0~70\ : std_logic;
SIGNAL \f1|Add0~73_sumout\ : std_logic;
SIGNAL \f1|Add0~74\ : std_logic;
SIGNAL \f1|Add0~77_sumout\ : std_logic;
SIGNAL \f1|Add0~78\ : std_logic;
SIGNAL \f1|Add0~81_sumout\ : std_logic;
SIGNAL \f1|Add0~82\ : std_logic;
SIGNAL \f1|Add0~85_sumout\ : std_logic;
SIGNAL \f1|Add0~86\ : std_logic;
SIGNAL \f1|Add0~89_sumout\ : std_logic;
SIGNAL \f1|Add0~90\ : std_logic;
SIGNAL \f1|Add0~93_sumout\ : std_logic;
SIGNAL \f1|Add0~94\ : std_logic;
SIGNAL \f1|Add0~97_sumout\ : std_logic;
SIGNAL \f1|Add0~98\ : std_logic;
SIGNAL \f1|Add0~101_sumout\ : std_logic;
SIGNAL \f1|Add0~102\ : std_logic;
SIGNAL \f1|Add0~33_sumout\ : std_logic;
SIGNAL \f1|Add0~34\ : std_logic;
SIGNAL \f1|Add0~37_sumout\ : std_logic;
SIGNAL \f1|Add0~38\ : std_logic;
SIGNAL \f1|Add0~41_sumout\ : std_logic;
SIGNAL \f1|Add0~42\ : std_logic;
SIGNAL \f1|Add0~45_sumout\ : std_logic;
SIGNAL \f1|Add0~46\ : std_logic;
SIGNAL \f1|Add0~49_sumout\ : std_logic;
SIGNAL \f1|Add0~50\ : std_logic;
SIGNAL \f1|Add0~53_sumout\ : std_logic;
SIGNAL \f1|Add0~54\ : std_logic;
SIGNAL \f1|Add0~9_sumout\ : std_logic;
SIGNAL \f1|Add0~10\ : std_logic;
SIGNAL \f1|Add0~13_sumout\ : std_logic;
SIGNAL \f1|Add0~14\ : std_logic;
SIGNAL \f1|Add0~17_sumout\ : std_logic;
SIGNAL \f1|Add0~18\ : std_logic;
SIGNAL \f1|Add0~21_sumout\ : std_logic;
SIGNAL \f1|Add0~22\ : std_logic;
SIGNAL \f1|Add0~25_sumout\ : std_logic;
SIGNAL \f1|Add0~26\ : std_logic;
SIGNAL \f1|Add0~29_sumout\ : std_logic;
SIGNAL \f1|Add0~30\ : std_logic;
SIGNAL \f1|Add0~1_sumout\ : std_logic;
SIGNAL \f1|Add0~2\ : std_logic;
SIGNAL \f1|Add0~5_sumout\ : std_logic;
SIGNAL \f1|Equal0~0_combout\ : std_logic;
SIGNAL \f1|local_out~0_combout\ : std_logic;
SIGNAL \f1|local_out~q\ : std_logic;
SIGNAL \dir_btn~input_o\ : std_logic;
SIGNAL \dir~0_combout\ : std_logic;
SIGNAL \dir~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \current_state.sD~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.sC~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.sB~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.sA~q\ : std_logic;
SIGNAL \f1|iterations\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \f1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \f1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \f1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \f1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \f1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_local_out~q\ : std_logic;
SIGNAL \ALT_INV_dir~q\ : std_logic;
SIGNAL \ALT_INV_current_state.sD~q\ : std_logic;
SIGNAL \ALT_INV_current_state.sC~q\ : std_logic;
SIGNAL \ALT_INV_current_state.sB~q\ : std_logic;
SIGNAL \ALT_INV_current_state.sA~q\ : std_logic;
SIGNAL \f1|ALT_INV_iterations\ : std_logic_vector(25 DOWNTO 0);

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
\f1|ALT_INV_Equal0~4_combout\ <= NOT \f1|Equal0~4_combout\;
\f1|ALT_INV_Equal0~3_combout\ <= NOT \f1|Equal0~3_combout\;
\f1|ALT_INV_Equal0~2_combout\ <= NOT \f1|Equal0~2_combout\;
\f1|ALT_INV_Equal0~1_combout\ <= NOT \f1|Equal0~1_combout\;
\f1|ALT_INV_Equal0~0_combout\ <= NOT \f1|Equal0~0_combout\;
\f1|ALT_INV_local_out~q\ <= NOT \f1|local_out~q\;
\ALT_INV_dir~q\ <= NOT \dir~q\;
\ALT_INV_current_state.sD~q\ <= NOT \current_state.sD~q\;
\ALT_INV_current_state.sC~q\ <= NOT \current_state.sC~q\;
\ALT_INV_current_state.sB~q\ <= NOT \current_state.sB~q\;
\ALT_INV_current_state.sA~q\ <= NOT \current_state.sA~q\;
\f1|ALT_INV_iterations\(11) <= NOT \f1|iterations\(11);
\f1|ALT_INV_iterations\(10) <= NOT \f1|iterations\(10);
\f1|ALT_INV_iterations\(9) <= NOT \f1|iterations\(9);
\f1|ALT_INV_iterations\(8) <= NOT \f1|iterations\(8);
\f1|ALT_INV_iterations\(7) <= NOT \f1|iterations\(7);
\f1|ALT_INV_iterations\(6) <= NOT \f1|iterations\(6);
\f1|ALT_INV_iterations\(5) <= NOT \f1|iterations\(5);
\f1|ALT_INV_iterations\(4) <= NOT \f1|iterations\(4);
\f1|ALT_INV_iterations\(3) <= NOT \f1|iterations\(3);
\f1|ALT_INV_iterations\(2) <= NOT \f1|iterations\(2);
\f1|ALT_INV_iterations\(1) <= NOT \f1|iterations\(1);
\f1|ALT_INV_iterations\(0) <= NOT \f1|iterations\(0);
\f1|ALT_INV_iterations\(17) <= NOT \f1|iterations\(17);
\f1|ALT_INV_iterations\(16) <= NOT \f1|iterations\(16);
\f1|ALT_INV_iterations\(15) <= NOT \f1|iterations\(15);
\f1|ALT_INV_iterations\(14) <= NOT \f1|iterations\(14);
\f1|ALT_INV_iterations\(13) <= NOT \f1|iterations\(13);
\f1|ALT_INV_iterations\(12) <= NOT \f1|iterations\(12);
\f1|ALT_INV_iterations\(23) <= NOT \f1|iterations\(23);
\f1|ALT_INV_iterations\(22) <= NOT \f1|iterations\(22);
\f1|ALT_INV_iterations\(21) <= NOT \f1|iterations\(21);
\f1|ALT_INV_iterations\(20) <= NOT \f1|iterations\(20);
\f1|ALT_INV_iterations\(19) <= NOT \f1|iterations\(19);
\f1|ALT_INV_iterations\(18) <= NOT \f1|iterations\(18);
\f1|ALT_INV_iterations\(25) <= NOT \f1|iterations\(25);
\f1|ALT_INV_iterations\(24) <= NOT \f1|iterations\(24);

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
	i => \ALT_INV_current_state.sB~q\,
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
	i => \ALT_INV_current_state.sC~q\,
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
	i => \ALT_INV_current_state.sD~q\,
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

\f1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~57_sumout\ = SUM(( \f1|iterations\(0) ) + ( VCC ) + ( !VCC ))
-- \f1|Add0~58\ = CARRY(( \f1|iterations\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(0),
	cin => GND,
	sumout => \f1|Add0~57_sumout\,
	cout => \f1|Add0~58\);

\f1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Equal0~1_combout\ = ( !\f1|iterations\(22) & ( !\f1|iterations\(23) & ( (!\f1|iterations\(18) & (!\f1|iterations\(19) & (!\f1|iterations\(20) & !\f1|iterations\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_iterations\(18),
	datab => \f1|ALT_INV_iterations\(19),
	datac => \f1|ALT_INV_iterations\(20),
	datad => \f1|ALT_INV_iterations\(21),
	datae => \f1|ALT_INV_iterations\(22),
	dataf => \f1|ALT_INV_iterations\(23),
	combout => \f1|Equal0~1_combout\);

\f1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Equal0~2_combout\ = ( !\f1|iterations\(16) & ( !\f1|iterations\(17) & ( (!\f1|iterations\(12) & (!\f1|iterations\(13) & (!\f1|iterations\(14) & !\f1|iterations\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_iterations\(12),
	datab => \f1|ALT_INV_iterations\(13),
	datac => \f1|ALT_INV_iterations\(14),
	datad => \f1|ALT_INV_iterations\(15),
	datae => \f1|ALT_INV_iterations\(16),
	dataf => \f1|ALT_INV_iterations\(17),
	combout => \f1|Equal0~2_combout\);

\f1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Equal0~3_combout\ = ( !\f1|iterations\(4) & ( !\f1|iterations\(5) & ( (!\f1|iterations\(0) & (!\f1|iterations\(1) & (\f1|iterations\(2) & !\f1|iterations\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_iterations\(0),
	datab => \f1|ALT_INV_iterations\(1),
	datac => \f1|ALT_INV_iterations\(2),
	datad => \f1|ALT_INV_iterations\(3),
	datae => \f1|ALT_INV_iterations\(4),
	dataf => \f1|ALT_INV_iterations\(5),
	combout => \f1|Equal0~3_combout\);

\f1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Equal0~4_combout\ = ( !\f1|iterations\(10) & ( !\f1|iterations\(11) & ( (!\f1|iterations\(6) & (!\f1|iterations\(7) & (!\f1|iterations\(8) & !\f1|iterations\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_iterations\(6),
	datab => \f1|ALT_INV_iterations\(7),
	datac => \f1|ALT_INV_iterations\(8),
	datad => \f1|ALT_INV_iterations\(9),
	datae => \f1|ALT_INV_iterations\(10),
	dataf => \f1|ALT_INV_iterations\(11),
	combout => \f1|Equal0~4_combout\);

\f1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Equal0~5_combout\ = ( \f1|Equal0~4_combout\ & ( (\f1|Equal0~0_combout\ & (\f1|Equal0~1_combout\ & (\f1|Equal0~2_combout\ & \f1|Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_Equal0~0_combout\,
	datab => \f1|ALT_INV_Equal0~1_combout\,
	datac => \f1|ALT_INV_Equal0~2_combout\,
	datad => \f1|ALT_INV_Equal0~3_combout\,
	datae => \f1|ALT_INV_Equal0~4_combout\,
	combout => \f1|Equal0~5_combout\);

\f1|iterations[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~57_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(0));

\f1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~61_sumout\ = SUM(( \f1|iterations\(1) ) + ( GND ) + ( \f1|Add0~58\ ))
-- \f1|Add0~62\ = CARRY(( \f1|iterations\(1) ) + ( GND ) + ( \f1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(1),
	cin => \f1|Add0~58\,
	sumout => \f1|Add0~61_sumout\,
	cout => \f1|Add0~62\);

\f1|iterations[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~61_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(1));

\f1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~65_sumout\ = SUM(( \f1|iterations\(2) ) + ( GND ) + ( \f1|Add0~62\ ))
-- \f1|Add0~66\ = CARRY(( \f1|iterations\(2) ) + ( GND ) + ( \f1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(2),
	cin => \f1|Add0~62\,
	sumout => \f1|Add0~65_sumout\,
	cout => \f1|Add0~66\);

\f1|iterations[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~65_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(2));

\f1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~69_sumout\ = SUM(( \f1|iterations\(3) ) + ( GND ) + ( \f1|Add0~66\ ))
-- \f1|Add0~70\ = CARRY(( \f1|iterations\(3) ) + ( GND ) + ( \f1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(3),
	cin => \f1|Add0~66\,
	sumout => \f1|Add0~69_sumout\,
	cout => \f1|Add0~70\);

\f1|iterations[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~69_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(3));

\f1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~73_sumout\ = SUM(( \f1|iterations\(4) ) + ( GND ) + ( \f1|Add0~70\ ))
-- \f1|Add0~74\ = CARRY(( \f1|iterations\(4) ) + ( GND ) + ( \f1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(4),
	cin => \f1|Add0~70\,
	sumout => \f1|Add0~73_sumout\,
	cout => \f1|Add0~74\);

\f1|iterations[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~73_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(4));

\f1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~77_sumout\ = SUM(( \f1|iterations\(5) ) + ( GND ) + ( \f1|Add0~74\ ))
-- \f1|Add0~78\ = CARRY(( \f1|iterations\(5) ) + ( GND ) + ( \f1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(5),
	cin => \f1|Add0~74\,
	sumout => \f1|Add0~77_sumout\,
	cout => \f1|Add0~78\);

\f1|iterations[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~77_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(5));

\f1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~81_sumout\ = SUM(( \f1|iterations\(6) ) + ( GND ) + ( \f1|Add0~78\ ))
-- \f1|Add0~82\ = CARRY(( \f1|iterations\(6) ) + ( GND ) + ( \f1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(6),
	cin => \f1|Add0~78\,
	sumout => \f1|Add0~81_sumout\,
	cout => \f1|Add0~82\);

\f1|iterations[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~81_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(6));

\f1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~85_sumout\ = SUM(( \f1|iterations\(7) ) + ( GND ) + ( \f1|Add0~82\ ))
-- \f1|Add0~86\ = CARRY(( \f1|iterations\(7) ) + ( GND ) + ( \f1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(7),
	cin => \f1|Add0~82\,
	sumout => \f1|Add0~85_sumout\,
	cout => \f1|Add0~86\);

\f1|iterations[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~85_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(7));

\f1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~89_sumout\ = SUM(( \f1|iterations\(8) ) + ( GND ) + ( \f1|Add0~86\ ))
-- \f1|Add0~90\ = CARRY(( \f1|iterations\(8) ) + ( GND ) + ( \f1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(8),
	cin => \f1|Add0~86\,
	sumout => \f1|Add0~89_sumout\,
	cout => \f1|Add0~90\);

\f1|iterations[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~89_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(8));

\f1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~93_sumout\ = SUM(( \f1|iterations\(9) ) + ( GND ) + ( \f1|Add0~90\ ))
-- \f1|Add0~94\ = CARRY(( \f1|iterations\(9) ) + ( GND ) + ( \f1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(9),
	cin => \f1|Add0~90\,
	sumout => \f1|Add0~93_sumout\,
	cout => \f1|Add0~94\);

\f1|iterations[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~93_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(9));

\f1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~97_sumout\ = SUM(( \f1|iterations\(10) ) + ( GND ) + ( \f1|Add0~94\ ))
-- \f1|Add0~98\ = CARRY(( \f1|iterations\(10) ) + ( GND ) + ( \f1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(10),
	cin => \f1|Add0~94\,
	sumout => \f1|Add0~97_sumout\,
	cout => \f1|Add0~98\);

\f1|iterations[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~97_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(10));

\f1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~101_sumout\ = SUM(( \f1|iterations\(11) ) + ( GND ) + ( \f1|Add0~98\ ))
-- \f1|Add0~102\ = CARRY(( \f1|iterations\(11) ) + ( GND ) + ( \f1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(11),
	cin => \f1|Add0~98\,
	sumout => \f1|Add0~101_sumout\,
	cout => \f1|Add0~102\);

\f1|iterations[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~101_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(11));

\f1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~33_sumout\ = SUM(( \f1|iterations\(12) ) + ( GND ) + ( \f1|Add0~102\ ))
-- \f1|Add0~34\ = CARRY(( \f1|iterations\(12) ) + ( GND ) + ( \f1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(12),
	cin => \f1|Add0~102\,
	sumout => \f1|Add0~33_sumout\,
	cout => \f1|Add0~34\);

\f1|iterations[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~33_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(12));

\f1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~37_sumout\ = SUM(( \f1|iterations\(13) ) + ( GND ) + ( \f1|Add0~34\ ))
-- \f1|Add0~38\ = CARRY(( \f1|iterations\(13) ) + ( GND ) + ( \f1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(13),
	cin => \f1|Add0~34\,
	sumout => \f1|Add0~37_sumout\,
	cout => \f1|Add0~38\);

\f1|iterations[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~37_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(13));

\f1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~41_sumout\ = SUM(( \f1|iterations\(14) ) + ( GND ) + ( \f1|Add0~38\ ))
-- \f1|Add0~42\ = CARRY(( \f1|iterations\(14) ) + ( GND ) + ( \f1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(14),
	cin => \f1|Add0~38\,
	sumout => \f1|Add0~41_sumout\,
	cout => \f1|Add0~42\);

\f1|iterations[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~41_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(14));

\f1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~45_sumout\ = SUM(( \f1|iterations\(15) ) + ( GND ) + ( \f1|Add0~42\ ))
-- \f1|Add0~46\ = CARRY(( \f1|iterations\(15) ) + ( GND ) + ( \f1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(15),
	cin => \f1|Add0~42\,
	sumout => \f1|Add0~45_sumout\,
	cout => \f1|Add0~46\);

\f1|iterations[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~45_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(15));

\f1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~49_sumout\ = SUM(( \f1|iterations\(16) ) + ( GND ) + ( \f1|Add0~46\ ))
-- \f1|Add0~50\ = CARRY(( \f1|iterations\(16) ) + ( GND ) + ( \f1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(16),
	cin => \f1|Add0~46\,
	sumout => \f1|Add0~49_sumout\,
	cout => \f1|Add0~50\);

\f1|iterations[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~49_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(16));

\f1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~53_sumout\ = SUM(( \f1|iterations\(17) ) + ( GND ) + ( \f1|Add0~50\ ))
-- \f1|Add0~54\ = CARRY(( \f1|iterations\(17) ) + ( GND ) + ( \f1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(17),
	cin => \f1|Add0~50\,
	sumout => \f1|Add0~53_sumout\,
	cout => \f1|Add0~54\);

\f1|iterations[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~53_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(17));

\f1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~9_sumout\ = SUM(( \f1|iterations\(18) ) + ( GND ) + ( \f1|Add0~54\ ))
-- \f1|Add0~10\ = CARRY(( \f1|iterations\(18) ) + ( GND ) + ( \f1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(18),
	cin => \f1|Add0~54\,
	sumout => \f1|Add0~9_sumout\,
	cout => \f1|Add0~10\);

\f1|iterations[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~9_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(18));

\f1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~13_sumout\ = SUM(( \f1|iterations\(19) ) + ( GND ) + ( \f1|Add0~10\ ))
-- \f1|Add0~14\ = CARRY(( \f1|iterations\(19) ) + ( GND ) + ( \f1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(19),
	cin => \f1|Add0~10\,
	sumout => \f1|Add0~13_sumout\,
	cout => \f1|Add0~14\);

\f1|iterations[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~13_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(19));

\f1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~17_sumout\ = SUM(( \f1|iterations\(20) ) + ( GND ) + ( \f1|Add0~14\ ))
-- \f1|Add0~18\ = CARRY(( \f1|iterations\(20) ) + ( GND ) + ( \f1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(20),
	cin => \f1|Add0~14\,
	sumout => \f1|Add0~17_sumout\,
	cout => \f1|Add0~18\);

\f1|iterations[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~17_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(20));

\f1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~21_sumout\ = SUM(( \f1|iterations\(21) ) + ( GND ) + ( \f1|Add0~18\ ))
-- \f1|Add0~22\ = CARRY(( \f1|iterations\(21) ) + ( GND ) + ( \f1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(21),
	cin => \f1|Add0~18\,
	sumout => \f1|Add0~21_sumout\,
	cout => \f1|Add0~22\);

\f1|iterations[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~21_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(21));

\f1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~25_sumout\ = SUM(( \f1|iterations\(22) ) + ( GND ) + ( \f1|Add0~22\ ))
-- \f1|Add0~26\ = CARRY(( \f1|iterations\(22) ) + ( GND ) + ( \f1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(22),
	cin => \f1|Add0~22\,
	sumout => \f1|Add0~25_sumout\,
	cout => \f1|Add0~26\);

\f1|iterations[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~25_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(22));

\f1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~29_sumout\ = SUM(( \f1|iterations\(23) ) + ( GND ) + ( \f1|Add0~26\ ))
-- \f1|Add0~30\ = CARRY(( \f1|iterations\(23) ) + ( GND ) + ( \f1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(23),
	cin => \f1|Add0~26\,
	sumout => \f1|Add0~29_sumout\,
	cout => \f1|Add0~30\);

\f1|iterations[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~29_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(23));

\f1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~1_sumout\ = SUM(( \f1|iterations\(24) ) + ( GND ) + ( \f1|Add0~30\ ))
-- \f1|Add0~2\ = CARRY(( \f1|iterations\(24) ) + ( GND ) + ( \f1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(24),
	cin => \f1|Add0~30\,
	sumout => \f1|Add0~1_sumout\,
	cout => \f1|Add0~2\);

\f1|iterations[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~1_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(24));

\f1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Add0~5_sumout\ = SUM(( \f1|iterations\(25) ) + ( GND ) + ( \f1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_iterations\(25),
	cin => \f1|Add0~2\,
	sumout => \f1|Add0~5_sumout\);

\f1|iterations[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|Add0~5_sumout\,
	sclr => \f1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|iterations\(25));

\f1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Equal0~0_combout\ = (!\f1|iterations\(24) & !\f1|iterations\(25))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_iterations\(24),
	datab => \f1|ALT_INV_iterations\(25),
	combout => \f1|Equal0~0_combout\);

\f1|local_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|local_out~0_combout\ = ( \f1|Equal0~3_combout\ & ( \f1|Equal0~4_combout\ & ( !\f1|local_out~q\ $ (((!\f1|Equal0~0_combout\) # ((!\f1|Equal0~1_combout\) # (!\f1|Equal0~2_combout\)))) ) ) ) # ( !\f1|Equal0~3_combout\ & ( \f1|Equal0~4_combout\ & ( 
-- \f1|local_out~q\ ) ) ) # ( \f1|Equal0~3_combout\ & ( !\f1|Equal0~4_combout\ & ( \f1|local_out~q\ ) ) ) # ( !\f1|Equal0~3_combout\ & ( !\f1|Equal0~4_combout\ & ( \f1|local_out~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_local_out~q\,
	datab => \f1|ALT_INV_Equal0~0_combout\,
	datac => \f1|ALT_INV_Equal0~1_combout\,
	datad => \f1|ALT_INV_Equal0~2_combout\,
	datae => \f1|ALT_INV_Equal0~3_combout\,
	dataf => \f1|ALT_INV_Equal0~4_combout\,
	combout => \f1|local_out~0_combout\);

\f1|local_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \f1|local_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|local_out~q\);

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

\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\dir~q\ & (!\current_state.sA~q\)) # (\dir~q\ & ((\current_state.sC~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001110100011101000111010001110100011101000111010001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.sA~q\,
	datab => \ALT_INV_current_state.sC~q\,
	datac => \ALT_INV_dir~q\,
	combout => \Selector3~0_combout\);

\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\current_state.sD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|local_out~q\,
	d => \Selector3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.sD~q\);

\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\dir~q\ & ((\current_state.sD~q\))) # (\dir~q\ & (\current_state.sB~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.sB~q\,
	datab => \ALT_INV_current_state.sD~q\,
	datac => \ALT_INV_dir~q\,
	combout => \Selector2~0_combout\);

\current_state.sC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|local_out~q\,
	d => \Selector2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.sC~q\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\dir~q\ & ((\current_state.sC~q\))) # (\dir~q\ & (!\current_state.sA~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000111010001110100011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.sA~q\,
	datab => \ALT_INV_current_state.sC~q\,
	datac => \ALT_INV_dir~q\,
	combout => \Selector1~0_combout\);

\current_state.sB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|local_out~q\,
	d => \Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.sB~q\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\dir~q\ & (!\current_state.sB~q\)) # (\dir~q\ & ((!\current_state.sD~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110010101100101011001010110010101100101011001010110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.sB~q\,
	datab => \ALT_INV_current_state.sD~q\,
	datac => \ALT_INV_dir~q\,
	combout => \Selector0~0_combout\);

\current_state.sA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|local_out~q\,
	d => \Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.sA~q\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;
END structure;


