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

-- DATE "10/03/2023 19:23:56"

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

ENTITY 	async_two_digits_counter IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	revert : IN std_logic;
	digit_one : OUT std_logic_vector(0 TO 6);
	digit_two : OUT std_logic_vector(0 TO 6)
	);
END async_two_digits_counter;

ARCHITECTURE structure OF async_two_digits_counter IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_revert : std_logic;
SIGNAL ww_digit_one : std_logic_vector(0 TO 6);
SIGNAL ww_digit_two : std_logic_vector(0 TO 6);
SIGNAL \digit_one[6]~output_o\ : std_logic;
SIGNAL \digit_one[5]~output_o\ : std_logic;
SIGNAL \digit_one[4]~output_o\ : std_logic;
SIGNAL \digit_one[3]~output_o\ : std_logic;
SIGNAL \digit_one[2]~output_o\ : std_logic;
SIGNAL \digit_one[1]~output_o\ : std_logic;
SIGNAL \digit_one[0]~output_o\ : std_logic;
SIGNAL \digit_two[6]~output_o\ : std_logic;
SIGNAL \digit_two[5]~output_o\ : std_logic;
SIGNAL \digit_two[4]~output_o\ : std_logic;
SIGNAL \digit_two[3]~output_o\ : std_logic;
SIGNAL \digit_two[2]~output_o\ : std_logic;
SIGNAL \digit_two[1]~output_o\ : std_logic;
SIGNAL \digit_two[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \revert~input_o\ : std_logic;
SIGNAL \is_descending~0_combout\ : std_logic;
SIGNAL \is_descending~q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\ : std_logic;
SIGNAL \number~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \iterations[0]~1_combout\ : std_logic;
SIGNAL \iterations[1]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\ : std_logic;
SIGNAL \number~1_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \number~4_combout\ : std_logic;
SIGNAL \number~5_combout\ : std_logic;
SIGNAL \number~2_combout\ : std_logic;
SIGNAL \number~3_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ : std_logic;
SIGNAL \number~6_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ : std_logic;
SIGNAL \number~9_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~38\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\ : std_logic;
SIGNAL \number~8_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \number~7_combout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \number~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \decimal[0]~0_combout\ : std_logic;
SIGNAL \decimal[1]~1_combout\ : std_logic;
SIGNAL \decimal[2]~2_combout\ : std_logic;
SIGNAL \decimal[3]~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~14_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~22\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~21_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \number~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~18_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~30\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~13_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~29_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~30_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~6_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL decimal : std_logic_vector(3 DOWNTO 0);
SIGNAL unit : std_logic_vector(3 DOWNTO 0);
SIGNAL iterations : std_logic_vector(1 DOWNTO 0);
SIGNAL number : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_revert~input_o\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~17_combout\ : std_logic;
SIGNAL \ALT_INV_number~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~15_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~9_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~21_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ : std_logic;
SIGNAL \ALT_INV_number~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~11_combout\ : std_logic;
SIGNAL \ALT_INV_number~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\ : std_logic;
SIGNAL \ALT_INV_number~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~9_combout\ : std_logic;
SIGNAL \ALT_INV_number~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ : std_logic;
SIGNAL \ALT_INV_number~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\ : std_logic;
SIGNAL \ALT_INV_number~5_combout\ : std_logic;
SIGNAL \ALT_INV_number~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\ : std_logic;
SIGNAL \ALT_INV_number~3_combout\ : std_logic;
SIGNAL \ALT_INV_number~2_combout\ : std_logic;
SIGNAL ALT_INV_number : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_number~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~2_combout\ : std_logic;
SIGNAL \ALT_INV_number~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\ : std_logic;
SIGNAL \ALT_INV_is_descending~q\ : std_logic;
SIGNAL ALT_INV_iterations : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL ALT_INV_unit : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_decimal : std_logic_vector(3 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_revert <= revert;
digit_one <= ww_digit_one;
digit_two <= ww_digit_two;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_revert~input_o\ <= NOT \revert~input_o\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~16_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[30]~16_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~14_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[20]~9_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[31]~13_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~18_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[21]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~17_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\;
\ALT_INV_number~11_combout\ <= NOT \number~11_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~16_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~15_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~10_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[32]~10_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~9_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~7_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[32]~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~14_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~13_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~37_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~33_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~29_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_7~17_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~13_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_7~13_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_7~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_7~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~1_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_7~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\;
\ALT_INV_number~10_combout\ <= NOT \number~10_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~12_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~11_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\;
\ALT_INV_number~9_combout\ <= NOT \number~9_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\;
\ALT_INV_number~8_combout\ <= NOT \number~8_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~9_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\;
\ALT_INV_number~7_combout\ <= NOT \number~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\;
\ALT_INV_number~6_combout\ <= NOT \number~6_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\;
\ALT_INV_number~5_combout\ <= NOT \number~5_combout\;
\ALT_INV_number~4_combout\ <= NOT \number~4_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\;
\ALT_INV_number~3_combout\ <= NOT \number~3_combout\;
\ALT_INV_number~2_combout\ <= NOT \number~2_combout\;
ALT_INV_number(4) <= NOT number(4);
ALT_INV_number(5) <= NOT number(5);
ALT_INV_number(6) <= NOT number(6);
ALT_INV_number(1) <= NOT number(1);
ALT_INV_number(2) <= NOT number(2);
ALT_INV_number(3) <= NOT number(3);
\ALT_INV_number~1_combout\ <= NOT \number~1_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~3_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~2_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\;
\ALT_INV_number~0_combout\ <= NOT \number~0_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~1_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\;
ALT_INV_number(0) <= NOT number(0);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\;
\ALT_INV_is_descending~q\ <= NOT \is_descending~q\;
ALT_INV_iterations(0) <= NOT iterations(0);
ALT_INV_iterations(1) <= NOT iterations(1);
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
ALT_INV_unit(3) <= NOT unit(3);
ALT_INV_unit(2) <= NOT unit(2);
ALT_INV_unit(1) <= NOT unit(1);
ALT_INV_unit(0) <= NOT unit(0);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
ALT_INV_decimal(3) <= NOT decimal(3);
ALT_INV_decimal(2) <= NOT decimal(2);
ALT_INV_decimal(1) <= NOT decimal(1);
ALT_INV_decimal(0) <= NOT decimal(0);
\Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~21_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~21_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~25_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~17_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~21_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~25_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;

\digit_one[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \digit_one[6]~output_o\);

\digit_one[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \digit_one[5]~output_o\);

\digit_one[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \digit_one[4]~output_o\);

\digit_one[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \digit_one[3]~output_o\);

\digit_one[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \digit_one[2]~output_o\);

\digit_one[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \digit_one[1]~output_o\);

\digit_one[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \digit_one[0]~output_o\);

\digit_two[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \digit_two[6]~output_o\);

\digit_two[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \digit_two[5]~output_o\);

\digit_two[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \digit_two[4]~output_o\);

\digit_two[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \digit_two[3]~output_o\);

\digit_two[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \digit_two[2]~output_o\);

\digit_two[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \digit_two[1]~output_o\);

\digit_two[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \digit_two[0]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\revert~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_revert,
	o => \revert~input_o\);

\is_descending~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \is_descending~0_combout\ = !\is_descending~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	combout => \is_descending~0_combout\);

is_descending : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_revert~input_o\,
	d => \is_descending~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \is_descending~q\);

\Mod0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_8~26_cout\);

\Mod0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( !number(0) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~26_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_8~6\ = CARRY(( !number(0) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(0),
	cin => \Mod0|auto_generated|divider|divider|op_8~26_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~6\);

\Mod0|auto_generated|divider|divider|StageOut[56]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\ = (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \Mod0|auto_generated|divider|divider|op_8~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( number(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( number(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\Mod0|auto_generated|divider|divider|StageOut[56]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\ = (!number(0) & \Mod0|auto_generated|divider|divider|op_8~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_number(0),
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\);

\number~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~0_combout\ = (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\))) # (\is_descending~q\ & (((\Add0~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110101111001001111010111100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~1_combout\,
	combout => \number~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\iterations[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \iterations[0]~1_combout\ = !iterations(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_iterations(0),
	combout => \iterations[0]~1_combout\);

\iterations[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \iterations[0]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(0));

\iterations[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \iterations[1]~0_combout\ = !iterations(1) $ (!iterations(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_iterations(1),
	datab => ALT_INV_iterations(0),
	combout => \iterations[1]~0_combout\);

\iterations[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \iterations[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(1));

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!iterations(1) & !iterations(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_iterations(1),
	datab => ALT_INV_iterations(0),
	combout => \Equal0~0_combout\);

\number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \number~0_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(0));

\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( number(0) ) + ( number(1) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( number(0) ) + ( number(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(0),
	dataf => ALT_INV_number(1),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\ = SUM(( \Add1~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~6\ = CARRY(( \Add1~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~6\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~7\);

\Mod0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~1_sumout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~6\ ))
-- \Mod0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~1_sumout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~10\);

\Mod0|auto_generated|divider|divider|StageOut[57]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ = (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \Mod0|auto_generated|divider|divider|op_8~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( number(1) ) + ( VCC ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( number(1) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Mod0|auto_generated|divider|divider|StageOut[57]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\ = (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\))) # (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110100000000000111010000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\);

\number~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~1_combout\ = (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\))) # (\is_descending~q\ & (((\Add0~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110101111001001111010111100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~2_combout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~3_combout\,
	combout => \number~1_combout\);

\number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \number~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(1));

\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( number(2) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( number(2) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(2),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~9_sumout\ = SUM(( !\Add1~5_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\ = CARRY(( !\Add1~5_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\ = SHARE(\Add1~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~6\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~7\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\);

\Mod0|auto_generated|divider|divider|StageOut[49]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\);

\Mod0|auto_generated|divider|divider|StageOut[49]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\ = (\Add1~5_sumout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( number(2) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( number(2) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\Mod0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~10\ ))
-- \Mod0|auto_generated|divider|divider|op_8~14\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~14\);

\number~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~4_combout\ = ( \Add0~9_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (((!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\)) # (\is_descending~q\) ) ) ) # ( !\Add0~9_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (!\is_descending~q\ & (((!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\))) ) ) ) # ( \Add0~9_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( 
-- ((\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\)))) # (\is_descending~q\) ) ) ) # ( !\Add0~9_sumout\ & ( 
-- !\Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (!\is_descending~q\ & (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010010101010111111110101010001010101111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \number~4_combout\);

\number~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~5_combout\ = (!\number~3_combout\ & \number~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~3_combout\,
	datab => \ALT_INV_number~4_combout\,
	combout => \number~5_combout\);

\number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \number~5_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(2));

\number~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~2_combout\ = (\is_descending~q\ & (!number(6) & (!number(5) & !number(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => ALT_INV_number(6),
	datac => ALT_INV_number(5),
	datad => ALT_INV_number(4),
	combout => \number~2_combout\);

\number~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~3_combout\ = ( \number~2_combout\ & ( (!number(3) & (!number(2) & (!number(0) & !number(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_number(3),
	datab => ALT_INV_number(2),
	datac => ALT_INV_number(0),
	datad => ALT_INV_number(1),
	datae => \ALT_INV_number~2_combout\,
	combout => \number~3_combout\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( number(3) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( number(3) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( number(3) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( number(3) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(3),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\ = SUM(( \Add1~9_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~14\ = CARRY(( \Add1~9_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~14\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~15\);

\Mod0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~9_sumout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~14\ ))
-- \Mod0|auto_generated|divider|divider|op_8~18\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~9_sumout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~18\);

\Mod0|auto_generated|divider|divider|StageOut[59]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\);

\number~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~6_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~17_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (!\number~3_combout\ & ((!\is_descending~q\) # (\Add0~13_sumout\))) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_8~17_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (!\number~3_combout\ & ((!\is_descending~q\ & (\Mod0|auto_generated|divider|divider|op_8~1_sumout\)) # (\is_descending~q\ & 
-- ((\Add0~13_sumout\))))) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_8~17_sumout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (!\number~3_combout\ & ((!\is_descending~q\ & 
-- (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\)) # (\is_descending~q\ & ((\Add0~13_sumout\))))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~17_sumout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (\is_descending~q\ 
-- & (!\number~3_combout\ & \Add0~13_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000100000001101000000100000011100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	combout => \number~6_combout\);

\number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \number~6_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(3));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( number(4) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~26\ = CARRY(( number(4) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(4),
	cin => \Add0~14\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( number(4) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~22\ = CARRY(( number(4) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(4),
	cin => \Add1~10\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\ = SUM(( !\Add1~21_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~14\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\ = CARRY(( !\Add1~21_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~14\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\ = SHARE(\Add1~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~14\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~15\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\);

\Mod0|auto_generated|divider|divider|StageOut[51]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~29_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\);

\Mod0|auto_generated|divider|divider|StageOut[51]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\ = (\Add1~21_sumout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~21_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\);

\Mod0|auto_generated|divider|divider|op_8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~37_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~18\ ))
-- \Mod0|auto_generated|divider|divider|op_8~38\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~16_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~37_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~38\);

\Mod0|auto_generated|divider|divider|StageOut[60]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~21_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~29_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\);

\number~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~9_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~37_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( (!\number~3_combout\ & ((!\is_descending~q\) # (\Add0~25_sumout\))) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_8~37_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( (!\number~3_combout\ & ((!\is_descending~q\ & (\Mod0|auto_generated|divider|divider|op_8~1_sumout\)) # (\is_descending~q\ & 
-- ((\Add0~25_sumout\))))) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_8~37_sumout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( (!\number~3_combout\ & ((!\is_descending~q\ & 
-- (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\)) # (\is_descending~q\ & ((\Add0~25_sumout\))))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~37_sumout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( 
-- (\is_descending~q\ & (\Add0~25_sumout\ & !\number~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000100011010000000000100111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_number~3_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\,
	combout => \number~9_combout\);

\number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \number~9_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(4));

\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( number(5) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( number(5) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(5),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\ = SUM(( !\Add1~17_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\ = CARRY(( !\Add1~17_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\ = SHARE(\Add1~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\ = CARRY(( \Add1~13_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17_sumout\ = SUM(( \Add1~25_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~18\ = CARRY(( \Add1~25_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~25_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~18\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~19\);

\Mod0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~17_sumout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~38\ ))
-- \Mod0|auto_generated|divider|divider|op_8~34\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~17_sumout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~17_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~25_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~38\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~34\);

\Mod0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~34\ ))
-- \Mod0|auto_generated|divider|divider|op_8~30\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~30\);

\Mod0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~25_sumout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~25_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~30\,
	cout => \Mod0|auto_generated|divider|divider|op_8~22_cout\);

\Mod0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_8~22_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~1_sumout\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( number(5) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( number(5) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(5),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\Mod0|auto_generated|divider|divider|StageOut[61]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~17_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~25_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\);

\number~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~8_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\ & ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|op_8~33_sumout\)) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\))) # (\is_descending~q\ & 
-- (((\Add0~21_sumout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\ & ( (!\is_descending~q\ & (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~33_sumout\)))) # (\is_descending~q\ 
-- & (((\Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~9_combout\,
	combout => \number~8_combout\);

\number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \number~8_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(5));

\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( number(6) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( number(6) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(6),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( GND ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add1~14\,
	sumout => \Add1~25_sumout\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ = SUM(( VCC ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~19\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~18\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~19\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\);

\Mod0|auto_generated|divider|divider|StageOut[53]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\ = (\Add1~13_sumout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~13_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( number(6) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number(6),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\);

\number~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~7_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Add0~17_sumout\ & ( ((\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\)) # (\is_descending~q\) ) ) 
-- ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Add0~17_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_8~29_sumout\) # (\is_descending~q\) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\Add0~17_sumout\ & ( 
-- (!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\Add0~17_sumout\ & ( 
-- (!\is_descending~q\ & \Mod0|auto_generated|divider|divider|op_8~29_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001010100010101001010101111111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \number~7_combout\);

\number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \number~7_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(6));

\Mod0|auto_generated|divider|divider|StageOut[53]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21_sumout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~21_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\);

\Mod0|auto_generated|divider|divider|StageOut[62]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\ = (\Mod0|auto_generated|divider|divider|op_8~29_sumout\ & !\Mod0|auto_generated|divider|divider|op_8~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\);

\Mod0|auto_generated|divider|divider|StageOut[62]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\ = (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\);

\Mod0|auto_generated|divider|divider|StageOut[61]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\ = (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_8~33_sumout\)) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\);

\Mod0|auto_generated|divider|divider|StageOut[60]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\ = (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_8~37_sumout\)) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\);

\Mod0|auto_generated|divider|divider|StageOut[59]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\ = (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_8~17_sumout\)) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\);

\Div0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_4~22_cout\);

\Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\))) # (\is_descending~q\ & (\Add0~13_sumout\)))) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\))) # (\is_descending~q\ & (\Add0~13_sumout\)))) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~12_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~18\);

\Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\))) # (\is_descending~q\ & (\Add0~25_sumout\)))) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~18\ ))
-- \Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\))) # (\is_descending~q\ & (\Add0~25_sumout\)))) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~17_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~10\);

\Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\))) # (\is_descending~q\ & (\Add0~21_sumout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~10\ 
-- ))
-- \Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( (!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\))) # (\is_descending~q\ & (\Add0~21_sumout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~18_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~14\);

\Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\))) # (\is_descending~q\ & 
-- (((\Add0~17_sumout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))
-- \Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\))) # (\is_descending~q\ & 
-- (((\Add0~17_sumout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~13_combout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~14_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~6\);

\Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~6\,
	sumout => \Div0|auto_generated|divider|divider|op_4~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = (\Div0|auto_generated|divider|divider|op_4~5_sumout\ & !\Div0|auto_generated|divider|divider|op_4~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

\Div0|auto_generated|divider|divider|StageOut[18]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ = (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \number~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \ALT_INV_number~7_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\);

\number~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~11_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|op_8~37_sumout\)) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\))) # (\is_descending~q\ & 
-- (((\Add0~25_sumout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( (!\is_descending~q\ & (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~37_sumout\)))) # 
-- (\is_descending~q\ & (((\Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\,
	combout => \number~11_combout\);

\Div0|auto_generated|divider|divider|StageOut[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\number~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \ALT_INV_number~6_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

\Mod0|auto_generated|divider|divider|StageOut[58]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\ = (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_8~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000001111111011100000111111101110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\);

\Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_5~26_cout\);

\Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\))) # (\is_descending~q\ & (\Add0~9_sumout\)))) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\))) # (\is_descending~q\ & (\Add0~9_sumout\)))) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~11_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~22\);

\Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))
-- \Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~18\);

\Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\number~11_combout\ & 
-- (!\number~3_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))
-- \Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\number~11_combout\ & 
-- (!\number~3_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~11_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~10\);

\Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\number~8_combout\)) ) 
-- + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))
-- \Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\number~8_combout\)) ) + ( 
-- GND ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~8_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~14\);

\Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\Div0|auto_generated|divider|divider|StageOut[18]~6_combout\) # (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~14\,
	cout => \Div0|auto_generated|divider|divider|op_5~6_cout\);

\Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|op_4~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

\Div0|auto_generated|divider|divider|StageOut[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \number~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \ALT_INV_number~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

\Div0|auto_generated|divider|divider|StageOut[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ = (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~9_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\number~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datac => \ALT_INV_number~9_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\);

\Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_6~26_cout\);

\Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\))) # (\is_descending~q\ & 
-- (((\Add0~5_sumout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\))) # (\is_descending~q\ & 
-- (((\Add0~5_sumout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~2_combout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~3_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~22\);

\Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\number~4_combout\ & 
-- (!\number~3_combout\))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))
-- \Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\number~4_combout\ & 
-- (!\number~3_combout\))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \ALT_INV_number~4_combout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~18\);

\Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~7_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))
-- \Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~7_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~14\);

\Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))
-- \Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10\);

\Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~10\,
	cout => \Div0|auto_generated|divider|divider|op_6~6_cout\);

\Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~1_sumout\);

\Div0|auto_generated|divider|divider|StageOut[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ = (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Div0|auto_generated|divider|divider|op_5~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\);

\Div0|auto_generated|divider|divider|StageOut[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ = (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\);

\Div0|auto_generated|divider|divider|StageOut[21]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~8_combout\ = (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~8_combout\);

\Div0|auto_generated|divider|divider|StageOut[20]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~9_combout\ = (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~21_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\number~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datac => \ALT_INV_number~5_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~9_combout\);

\Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_7~26_cout\);

\Div0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\))) # (\is_descending~q\ & 
-- (((\Add0~1_sumout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~1_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~26_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~22_cout\);

\Div0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\number~1_combout\)) ) 
-- + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~1_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~22_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~18_cout\);

\Div0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[20]~9_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~14_cout\);

\Div0|auto_generated|divider|divider|op_7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~8_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~10_cout\);

\Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_6~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[22]~2_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[22]~0_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~6_cout\);

\Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~1_sumout\);

\decimal[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal[0]~0_combout\ = !\Div0|auto_generated|divider|divider|op_7~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \decimal[0]~0_combout\);

\decimal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \decimal[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(0));

\decimal[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal[1]~1_combout\ = !\Div0|auto_generated|divider|divider|op_6~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \decimal[1]~1_combout\);

\decimal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \decimal[1]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(1));

\decimal[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal[2]~2_combout\ = !\Div0|auto_generated|divider|divider|op_5~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \decimal[2]~2_combout\);

\decimal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \decimal[2]~2_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(2));

\decimal[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal[3]~3_combout\ = !\Div0|auto_generated|divider|divider|op_4~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \decimal[3]~3_combout\);

\decimal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \decimal[3]~3_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(3));

\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ((!decimal(1) & ((decimal(2)))) # (decimal(1) & ((!decimal(0)) # (!decimal(2))))) # (decimal(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111011111111001111101111111100111110111111110011111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(2),
	datad => ALT_INV_decimal(3),
	combout => \Mux6~0_combout\);

\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!decimal(3) & ((!decimal(0) & (decimal(1) & !decimal(2))) # (decimal(0) & ((!decimal(2)) # (decimal(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000000011100010000000001110001000000000111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(2),
	datad => ALT_INV_decimal(3),
	combout => \Mux5~0_combout\);

\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ((!decimal(1) & decimal(2))) # (decimal(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(2),
	combout => \Mux4~0_combout\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!decimal(3) & ((!decimal(0) & (!decimal(1) & decimal(2))) # (decimal(0) & (!decimal(1) $ (decimal(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100000000010010010000000001001001000000000100100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(2),
	datad => ALT_INV_decimal(3),
	combout => \Mux3~0_combout\);

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!decimal(0) & (decimal(1) & !decimal(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(2),
	combout => \Mux2~0_combout\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (decimal(2) & (!decimal(0) $ (!decimal(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(2),
	combout => \Mux1~0_combout\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!decimal(1) & (!decimal(3) & (!decimal(0) $ (!decimal(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(2),
	datad => ALT_INV_decimal(3),
	combout => \Mux0~0_combout\);

\Mod1|auto_generated|divider|divider|op_4~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~14_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod1|auto_generated|divider|divider|op_4~14_cout\);

\Mod1|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\))) # (\is_descending~q\ & (\Add0~13_sumout\)))) ) + ( VCC ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~14_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_4~6\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\))) # (\is_descending~q\ & (\Add0~13_sumout\)))) ) + ( VCC ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~12_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~14_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~6\);

\Mod1|auto_generated|divider|divider|op_4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~21_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\))) # (\is_descending~q\ & (\Add0~25_sumout\)))) ) + ( GND ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~6\ ))
-- \Mod1|auto_generated|divider|divider|op_4~22\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\))) # (\is_descending~q\ & (\Add0~25_sumout\)))) ) + ( GND ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~17_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~21_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~22\);

\Mod1|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\))) # (\is_descending~q\ & (\Add0~21_sumout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_4~22\ 
-- ))
-- \Mod1|auto_generated|divider|divider|op_4~18\ = CARRY(( (!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\))) # (\is_descending~q\ & (\Add0~21_sumout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~18_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~22\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~18\);

\Mod1|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\))) # (\is_descending~q\ & 
-- (((\Add0~17_sumout\)))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_4~18\ ))
-- \Mod1|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\))) # (\is_descending~q\ & 
-- (((\Add0~17_sumout\)))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~13_combout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~14_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~18\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~10\);

\Mod1|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_4~10\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~1_sumout\);

\Mod1|auto_generated|divider|divider|StageOut[24]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\ = (\Mod1|auto_generated|divider|divider|op_4~9_sumout\ & !\Mod1|auto_generated|divider|divider|op_4~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\);

\Mod1|auto_generated|divider|divider|StageOut[24]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\ = (\number~7_combout\ & \Mod1|auto_generated|divider|divider|op_4~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~7_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\);

\number~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~10_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|op_8~17_sumout\)) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\))) # (\is_descending~q\ & 
-- (((\Add0~13_sumout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (!\is_descending~q\ & (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~17_sumout\)))) # (\is_descending~q\ 
-- & (((\Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	combout => \number~10_combout\);

\Mod1|auto_generated|divider|divider|op_5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod1|auto_generated|divider|divider|op_5~18_cout\);

\Mod1|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\))) # (\is_descending~q\ & (\Add0~9_sumout\)))) ) + ( VCC ) + ( 
-- \Mod1|auto_generated|divider|divider|op_5~18_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_5~6\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\))) # (\is_descending~q\ & (\Add0~9_sumout\)))) ) + ( VCC ) + ( 
-- \Mod1|auto_generated|divider|divider|op_5~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~11_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~18_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~6\);

\Mod1|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_4~5_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (!\number~3_combout\ & 
-- ((\number~10_combout\)))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~6\ ))
-- \Mod1|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_4~5_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (!\number~3_combout\ & 
-- ((\number~10_combout\)))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~3_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datad => \ALT_INV_number~10_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~10\);

\Mod1|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_4~21_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (!\number~3_combout\ 
-- & ((\number~11_combout\)))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~10\ ))
-- \Mod1|auto_generated|divider|divider|op_5~26\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_4~21_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (!\number~3_combout\ & 
-- ((\number~11_combout\)))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~3_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\,
	datad => \ALT_INV_number~11_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~26\);

\Mod1|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_4~17_sumout\))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (\number~8_combout\)) ) 
-- + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~26\ ))
-- \Mod1|auto_generated|divider|divider|op_5~22\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_4~17_sumout\))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (\number~8_combout\)) ) + ( 
-- GND ) + ( \Mod1|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~26\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~22\);

\Mod1|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~22\ ))
-- \Mod1|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~9_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~22\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~14\);

\Mod1|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~1_sumout\);

\Mod1|auto_generated|divider|divider|StageOut[23]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\ = (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & \Mod1|auto_generated|divider|divider|op_4~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\);

\Mod1|auto_generated|divider|divider|StageOut[23]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\ = (\number~8_combout\ & \Mod1|auto_generated|divider|divider|op_4~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\);

\Mod1|auto_generated|divider|divider|StageOut[22]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\ = (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_4~21_sumout\))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\number~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~9_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\);

\Mod1|auto_generated|divider|divider|StageOut[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\ = (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_4~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (\number~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\);

\Mod1|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod1|auto_generated|divider|divider|op_6~22_cout\);

\Mod1|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\))) # (\is_descending~q\ & 
-- (((\Add0~5_sumout\)))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~22_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_6~6\ = CARRY(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\))) # (\is_descending~q\ & (((\Add0~5_sumout\)))) 
-- ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~2_combout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~3_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~22_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~6\);

\Mod1|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~5_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (!\number~3_combout\ & 
-- ((\number~4_combout\)))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~6\ ))
-- \Mod1|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~5_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (!\number~3_combout\ & 
-- ((\number~4_combout\)))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \ALT_INV_number~3_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \ALT_INV_number~4_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~10\);

\Mod1|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~10\ ))
-- \Mod1|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~14\);

\Mod1|auto_generated|divider|divider|op_6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~29_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~25_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~14\ ))
-- \Mod1|auto_generated|divider|divider|op_6~30\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~25_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~29_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~30\);

\Mod1|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~30\ ))
-- \Mod1|auto_generated|divider|divider|op_6~26\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~30\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~26\);

\Mod1|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~13_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~26\ ))
-- \Mod1|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~13_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~9_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~26\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~18\);

\Mod1|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_6~18\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~1_sumout\);

\Mod1|auto_generated|divider|divider|StageOut[32]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~7_combout\ = (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & \Mod1|auto_generated|divider|divider|op_5~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~7_combout\);

\Mod1|auto_generated|divider|divider|StageOut[32]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~10_combout\ = (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~9_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~10_combout\);

\Mod1|auto_generated|divider|divider|StageOut[31]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~13_combout\ = (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~13_combout\);

\Mod1|auto_generated|divider|divider|StageOut[30]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\ = (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & \Mod1|auto_generated|divider|divider|op_5~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\);

\Mod1|auto_generated|divider|divider|StageOut[30]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~16_combout\ = (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & \Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~16_combout\);

\Mod1|auto_generated|divider|divider|StageOut[29]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\ = (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\);

\Mod1|auto_generated|divider|divider|StageOut[28]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\ = (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (\number~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~5_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\);

\Mod1|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod1|auto_generated|divider|divider|op_7~26_cout\);

\Mod1|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\))) # (\is_descending~q\ & 
-- (((\Add0~1_sumout\)))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~26_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_7~6\ = CARRY(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\))) # (\is_descending~q\ & (((\Add0~1_sumout\)))) 
-- ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~1_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~26_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~6\);

\Mod1|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\number~1_combout\)) ) + 
-- ( GND ) + ( \Mod1|auto_generated|divider|divider|op_7~6\ ))
-- \Mod1|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\number~1_combout\)) ) + ( 
-- GND ) + ( \Mod1|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~1_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~10\);

\Mod1|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~10\ ))
-- \Mod1|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~10\,
	sumout => \Mod1|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~14\);

\Mod1|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_7~14\ ))
-- \Mod1|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~14\,
	sumout => \Mod1|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~18\);

\Mod1|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_6~29_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[30]~16_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~14_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~16_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~18\,
	cout => \Mod1|auto_generated|divider|divider|op_7~34_cout\);

\Mod1|auto_generated|divider|divider|op_7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~30_cout\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~25_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~13_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~34_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~30_cout\);

\Mod1|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_6~17_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[32]~10_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[32]~7_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~7_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~10_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~30_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~22_cout\);

\Mod1|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_7~22_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_7~1_sumout\);

\Mod1|auto_generated|divider|divider|StageOut[42]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~0_combout\ = (!\Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_7~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\number~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \ALT_INV_number~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~0_combout\);

\unit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mod1|auto_generated|divider|divider|StageOut[42]~0_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unit(0));

\Mod1|auto_generated|divider|divider|StageOut[43]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~1_combout\ = ( \Mod1|auto_generated|divider|divider|op_7~9_sumout\ & ( (!\Mod1|auto_generated|divider|divider|op_7~1_sumout\) # ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\number~1_combout\))) ) ) # ( !\Mod1|auto_generated|divider|divider|op_7~9_sumout\ & ( (\Mod1|auto_generated|divider|divider|op_7~1_sumout\ 
-- & ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\number~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~1_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~1_combout\);

\unit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mod1|auto_generated|divider|divider|StageOut[43]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unit(1));

\Mod1|auto_generated|divider|divider|StageOut[44]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~3_combout\ = ( \Mod1|auto_generated|divider|divider|op_7~13_sumout\ & ( (!\Mod1|auto_generated|divider|divider|op_7~1_sumout\) # ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod1|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\))) ) ) # ( !\Mod1|auto_generated|divider|divider|op_7~13_sumout\ & ( 
-- (\Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011111111110001101100000000000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~3_combout\);

\unit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mod1|auto_generated|divider|divider|StageOut[44]~3_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unit(2));

\Mod1|auto_generated|divider|divider|StageOut[45]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~6_combout\ = ( \Mod1|auto_generated|divider|divider|op_7~17_sumout\ & ( (!\Mod1|auto_generated|divider|divider|op_7~1_sumout\) # ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod1|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\))) ) ) # ( !\Mod1|auto_generated|divider|divider|op_7~17_sumout\ & ( 
-- (\Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011111111110001101100000000000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~6_combout\);

\unit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mod1|auto_generated|divider|divider|StageOut[45]~6_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unit(3));

\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ((!unit(1) & ((unit(2)))) # (unit(1) & ((!unit(0)) # (!unit(2))))) # (unit(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111011111111001111101111111100111110111111110011111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(0),
	datab => ALT_INV_unit(1),
	datac => ALT_INV_unit(2),
	datad => ALT_INV_unit(3),
	combout => \Mux13~0_combout\);

\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!unit(3) & ((!unit(0) & (unit(1) & !unit(2))) # (unit(0) & ((!unit(2)) # (unit(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000000011100010000000001110001000000000111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(0),
	datab => ALT_INV_unit(1),
	datac => ALT_INV_unit(2),
	datad => ALT_INV_unit(3),
	combout => \Mux12~0_combout\);

\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ((!unit(1) & unit(2))) # (unit(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(0),
	datab => ALT_INV_unit(1),
	datac => ALT_INV_unit(2),
	combout => \Mux11~0_combout\);

\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!unit(3) & ((!unit(0) & (!unit(1) & unit(2))) # (unit(0) & (!unit(1) $ (unit(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100000000010010010000000001001001000000000100100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(0),
	datab => ALT_INV_unit(1),
	datac => ALT_INV_unit(2),
	datad => ALT_INV_unit(3),
	combout => \Mux10~0_combout\);

\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!unit(0) & (unit(1) & !unit(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(0),
	datab => ALT_INV_unit(1),
	datac => ALT_INV_unit(2),
	combout => \Mux9~0_combout\);

\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (unit(2) & (!unit(0) $ (!unit(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(0),
	datab => ALT_INV_unit(1),
	datac => ALT_INV_unit(2),
	combout => \Mux8~0_combout\);

\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!unit(1) & (!unit(3) & (!unit(0) $ (!unit(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(0),
	datab => ALT_INV_unit(1),
	datac => ALT_INV_unit(2),
	datad => ALT_INV_unit(3),
	combout => \Mux7~0_combout\);

ww_digit_one(6) <= \digit_one[6]~output_o\;

ww_digit_one(5) <= \digit_one[5]~output_o\;

ww_digit_one(4) <= \digit_one[4]~output_o\;

ww_digit_one(3) <= \digit_one[3]~output_o\;

ww_digit_one(2) <= \digit_one[2]~output_o\;

ww_digit_one(1) <= \digit_one[1]~output_o\;

ww_digit_one(0) <= \digit_one[0]~output_o\;

ww_digit_two(6) <= \digit_two[6]~output_o\;

ww_digit_two(5) <= \digit_two[5]~output_o\;

ww_digit_two(4) <= \digit_two[4]~output_o\;

ww_digit_two(3) <= \digit_two[3]~output_o\;

ww_digit_two(2) <= \digit_two[2]~output_o\;

ww_digit_two(1) <= \digit_two[1]~output_o\;

ww_digit_two(0) <= \digit_two[0]~output_o\;
END structure;


