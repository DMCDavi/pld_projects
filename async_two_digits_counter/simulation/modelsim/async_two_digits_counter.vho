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

-- DATE "10/03/2023 20:40:24"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

-- Design Ports Information
-- digit_one[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_one[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_one[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_one[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_one[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_one[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_one[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_two[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_two[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_two[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_two[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_two[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_two[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_two[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- revert	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \revert~input_o\ : std_logic;
SIGNAL \is_descending~DUPLICATE_q\ : std_logic;
SIGNAL \is_descending~0_combout\ : std_logic;
SIGNAL \is_descending~q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\ : std_logic;
SIGNAL \number~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~114_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~9_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[676]~48_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~6\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~101_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[676]~47_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~10\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~6\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~105_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[704]~49_combout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~102\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~103\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~97_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~106\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~101_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[705]~46_combout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~98\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~99\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~93_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[678]~43_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[678]~44_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~102\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~97_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[706]~45_combout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~94\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~95\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~89_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~98\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~93_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[707]~42_combout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[680]~40_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~90\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~91\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~85_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[680]~39_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~94\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~89_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[708]~41_combout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~86\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~87\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~81_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~90\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~85_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[709]~38_combout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~82\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~83\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~77_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[682]~35_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[682]~36_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~86\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~81_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[710]~37_combout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~78\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~79\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~73_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~82\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~77_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[711]~34_combout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~74\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~75\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~69_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[684]~31_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[684]~32_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~78\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~73_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[712]~33_combout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~70\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~71\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~65_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~74\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~69_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[713]~30_combout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~66\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~67\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~61_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[686]~27_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[686]~28_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~70\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~65_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[714]~29_combout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~62\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~63\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~57_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~66\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~61_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[715]~26_combout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[688]~24_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~58\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~59\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~53_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[688]~23_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~62\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~57_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[716]~25_combout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~54\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~55\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~49_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~58\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~53_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[717]~22_combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~50\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~51\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~45_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[690]~19_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[690]~20_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~54\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~49_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[718]~21_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~46\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~47\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~41_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~50\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~45_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[719]~18_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[692]~16_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~42\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~43\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~37_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[692]~15_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~46\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~41_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[720]~17_combout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~38\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~39\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~33_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~42\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~37_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[721]~14_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~34\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~35\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~29_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[694]~11_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[694]~12_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~38\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~33_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[722]~13_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~30\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~31\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~25_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~34\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~29_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[723]~10_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~26\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~27\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~21_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[696]~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[696]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~30\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~25_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[724]~9_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~22\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~23\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~17_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~26\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~21_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[725]~6_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[698]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~18\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~19\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[698]~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~22\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~17_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[726]~5_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~14\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~15\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~10\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~11\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~106\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~107\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~9_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~18\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[727]~2_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~105_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[700]~50_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[700]~51_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~14\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~110_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~1_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[702]~1_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_20~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[703]~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \number~4_combout\ : std_logic;
SIGNAL \number~5_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ : std_logic;
SIGNAL \number~6_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~38\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \number~8_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \number~7_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\ : std_logic;
SIGNAL \number~0_combout\ : std_logic;
SIGNAL \number~2_combout\ : std_logic;
SIGNAL \number~3_combout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~37_sumout\ : std_logic;
SIGNAL \number~9_combout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ : std_logic;
SIGNAL \number~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
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
SIGNAL \decimal[3]~3_combout\ : std_logic;
SIGNAL \decimal[2]~2_combout\ : std_logic;
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
SIGNAL \Mod1|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
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
SIGNAL \Mod1|auto_generated|divider|divider|op_6~29_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\ : std_logic;
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
SIGNAL \Mod1|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL decimal : std_logic_vector(3 DOWNTO 0);
SIGNAL unit : std_logic_vector(3 DOWNTO 0);
SIGNAL iterations : std_logic_vector(25 DOWNTO 0);
SIGNAL number : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_is_descending~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_revert~input_o\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~18_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[700]~51_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[700]~50_combout\ : std_logic;
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
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[676]~48_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[676]~47_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[678]~44_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[678]~43_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[680]~40_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[680]~39_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[682]~36_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[682]~35_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[684]~32_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[684]~31_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[686]~28_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[686]~27_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[688]~24_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[688]~23_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[690]~20_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[690]~19_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[692]~16_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[692]~15_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[694]~12_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[694]~11_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[696]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[696]~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[698]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[698]~3_combout\ : std_logic;
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
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL ALT_INV_iterations : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_Add2~101_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[25]~105_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
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
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~97_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[1]~101_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~101_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[2]~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~93_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~89_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[3]~93_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~93_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[4]~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~85_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~81_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[5]~85_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~85_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[6]~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~77_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~73_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[7]~77_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~77_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[8]~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[9]~69_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~69_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[10]~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[11]~61_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~61_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[12]~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[13]~53_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~53_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[14]~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[15]~45_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~45_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[16]~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[17]~37_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~37_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[18]~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[19]~29_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~29_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[20]~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[21]~21_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~21_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[22]~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[23]~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[24]~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~9_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
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

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_revert <= revert;
digit_one <= ww_digit_one;
digit_two <= ww_digit_two;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_is_descending~DUPLICATE_q\ <= NOT \is_descending~DUPLICATE_q\;
\ALT_INV_revert~input_o\ <= NOT \revert~input_o\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~16_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[30]~16_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~14_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[20]~9_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[31]~13_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~18_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[700]~51_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[700]~51_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[700]~50_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[700]~50_combout\;
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
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[676]~48_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[676]~48_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[676]~47_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[676]~47_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[678]~44_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[678]~44_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[678]~43_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[678]~43_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[680]~40_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[680]~40_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[680]~39_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[680]~39_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[682]~36_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[682]~36_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[682]~35_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[682]~35_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[684]~32_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[684]~32_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[684]~31_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[684]~31_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[686]~28_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[686]~28_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[686]~27_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[686]~27_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[688]~24_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[688]~24_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[688]~23_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[688]~23_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[690]~20_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[690]~20_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[690]~19_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[690]~19_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[692]~16_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[692]~16_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[692]~15_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[692]~15_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[694]~12_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[694]~12_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[694]~11_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[694]~11_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[696]~8_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[696]~8_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[696]~7_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[696]~7_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[698]~4_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[698]~4_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[698]~3_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[698]~3_combout\;
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
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
ALT_INV_iterations(2) <= NOT iterations(2);
ALT_INV_iterations(3) <= NOT iterations(3);
ALT_INV_iterations(4) <= NOT iterations(4);
ALT_INV_iterations(5) <= NOT iterations(5);
ALT_INV_iterations(6) <= NOT iterations(6);
ALT_INV_iterations(7) <= NOT iterations(7);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_iterations(8) <= NOT iterations(8);
ALT_INV_iterations(9) <= NOT iterations(9);
ALT_INV_iterations(10) <= NOT iterations(10);
ALT_INV_iterations(11) <= NOT iterations(11);
ALT_INV_iterations(12) <= NOT iterations(12);
ALT_INV_iterations(13) <= NOT iterations(13);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_iterations(14) <= NOT iterations(14);
ALT_INV_iterations(15) <= NOT iterations(15);
ALT_INV_iterations(16) <= NOT iterations(16);
ALT_INV_iterations(17) <= NOT iterations(17);
ALT_INV_iterations(18) <= NOT iterations(18);
ALT_INV_iterations(19) <= NOT iterations(19);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_iterations(20) <= NOT iterations(20);
ALT_INV_iterations(21) <= NOT iterations(21);
ALT_INV_iterations(22) <= NOT iterations(22);
ALT_INV_iterations(23) <= NOT iterations(23);
ALT_INV_iterations(24) <= NOT iterations(24);
ALT_INV_iterations(25) <= NOT iterations(25);
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
\ALT_INV_Add2~101_sumout\ <= NOT \Add2~101_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~17_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~21_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~25_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~13_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[25]~105_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~105_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
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
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~105_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~105_sumout\;
\ALT_INV_Add2~97_sumout\ <= NOT \Add2~97_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[1]~101_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~101_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~101_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~101_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[2]~97_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~97_sumout\;
\ALT_INV_Add2~93_sumout\ <= NOT \Add2~93_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~97_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~97_sumout\;
\ALT_INV_Add2~89_sumout\ <= NOT \Add2~89_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[3]~93_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~93_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~93_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~93_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[4]~89_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~89_sumout\;
\ALT_INV_Add2~85_sumout\ <= NOT \Add2~85_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~89_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~89_sumout\;
\ALT_INV_Add2~81_sumout\ <= NOT \Add2~81_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[5]~85_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~85_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~85_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~85_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[6]~81_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~81_sumout\;
\ALT_INV_Add2~77_sumout\ <= NOT \Add2~77_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~81_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~81_sumout\;
\ALT_INV_Add2~73_sumout\ <= NOT \Add2~73_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[7]~77_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~77_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~77_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~77_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[8]~73_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~73_sumout\;
\ALT_INV_Add2~69_sumout\ <= NOT \Add2~69_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~73_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~73_sumout\;
\ALT_INV_Add2~65_sumout\ <= NOT \Add2~65_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[9]~69_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~69_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~69_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~69_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[10]~65_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~65_sumout\;
\ALT_INV_Add2~61_sumout\ <= NOT \Add2~61_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~65_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~65_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[11]~61_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~61_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~61_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~61_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[12]~57_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~57_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~57_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~57_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[13]~53_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~53_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~53_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~53_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[14]~49_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~49_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~49_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~49_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[15]~45_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~45_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~45_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~45_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[16]~41_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~41_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~41_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~41_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[17]~37_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~37_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~37_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~37_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[18]~33_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~33_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~33_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[19]~29_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~29_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~29_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~29_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[20]~25_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~25_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~25_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[21]~21_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~21_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~21_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~21_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[22]~17_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~17_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~17_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[23]~13_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~13_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~13_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~13_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[24]~9_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~9_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~9_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~5_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~5_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_20~1_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[0]~5_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~5_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
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

-- Location: IOOBUF_X51_Y0_N53
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
	o => ww_digit_one(6));

-- Location: IOOBUF_X43_Y0_N53
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
	o => ww_digit_one(5));

-- Location: IOOBUF_X38_Y0_N36
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
	o => ww_digit_one(4));

-- Location: IOOBUF_X43_Y0_N36
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
	o => ww_digit_one(3));

-- Location: IOOBUF_X44_Y0_N53
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
	o => ww_digit_one(2));

-- Location: IOOBUF_X40_Y0_N93
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
	o => ww_digit_one(1));

-- Location: IOOBUF_X44_Y0_N36
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
	o => ww_digit_one(0));

-- Location: IOOBUF_X46_Y0_N36
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
	o => ww_digit_two(6));

-- Location: IOOBUF_X50_Y0_N53
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
	o => ww_digit_two(5));

-- Location: IOOBUF_X48_Y0_N93
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
	o => ww_digit_two(4));

-- Location: IOOBUF_X50_Y0_N36
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
	o => ww_digit_two(3));

-- Location: IOOBUF_X48_Y0_N76
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
	o => ww_digit_two(2));

-- Location: IOOBUF_X51_Y0_N36
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
	o => ww_digit_two(1));

-- Location: IOOBUF_X52_Y0_N53
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
	o => ww_digit_two(0));

-- Location: IOIBUF_X14_Y45_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X14_Y0_N1
\revert~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_revert,
	o => \revert~input_o\);

-- Location: FF_X41_Y1_N17
\is_descending~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_revert~input_o\,
	asdata => \is_descending~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \is_descending~DUPLICATE_q\);

-- Location: LABCELL_X41_Y1_N27
\is_descending~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \is_descending~0_combout\ = ( !\is_descending~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_is_descending~DUPLICATE_q\,
	combout => \is_descending~0_combout\);

-- Location: FF_X41_Y1_N16
is_descending : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_revert~input_o\,
	asdata => \is_descending~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \is_descending~q\);

-- Location: LABCELL_X40_Y1_N24
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

-- Location: LABCELL_X40_Y1_N27
\Mod0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( !number(0) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~26_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_8~6\ = CARRY(( !number(0) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number(0),
	cin => \Mod0|auto_generated|divider|divider|op_8~26_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~6\);

-- Location: MLABCELL_X42_Y1_N0
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

-- Location: MLABCELL_X42_Y1_N3
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

-- Location: LABCELL_X39_Y1_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( number(0) ) + ( number(1) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( number(0) ) + ( number(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number(1),
	datad => ALT_INV_number(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X39_Y1_N30
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

-- Location: LABCELL_X39_Y1_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( number(3) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( number(3) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_number(3),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X39_Y1_N9
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

-- Location: LABCELL_X39_Y1_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( number(5) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( number(5) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number(5),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X39_Y1_N15
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

-- Location: LABCELL_X39_Y1_N33
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

-- Location: LABCELL_X39_Y1_N36
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\ = SUM(( \Add1~9_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~14\ = CARRY(( \Add1~9_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~10\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~11\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~14\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~15\);

-- Location: LABCELL_X39_Y1_N39
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

-- Location: LABCELL_X39_Y1_N42
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\ = SUM(( !\Add1~17_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\ = CARRY(( !\Add1~17_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\ = SHARE(\Add1~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~30\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~31\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\);

-- Location: LABCELL_X39_Y1_N45
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\ = CARRY(( \Add1~13_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~26\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~27\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\);

-- Location: LABCELL_X39_Y1_N48
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17_sumout\ = SUM(( \Add1~25_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~18\ = CARRY(( \Add1~25_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~25_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~22\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~23\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~18\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~19\);

-- Location: LABCELL_X39_Y1_N51
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

-- Location: LABCELL_X40_Y1_N30
\Mod0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Add1~1_sumout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~6\ ))
-- \Mod0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Add1~1_sumout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~5_sumout\,
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X40_Y2_N21
\Mod0|auto_generated|divider|divider|StageOut[57]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\);

-- Location: LABCELL_X40_Y2_N24
\Mod0|auto_generated|divider|divider|StageOut[57]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) # (\Add1~1_sumout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\Add1~1_sumout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\);

-- Location: LABCELL_X40_Y2_N45
\number~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~1_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\ & ( (!\is_descending~q\) # (\Add0~5_sumout\) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\ & ( (!\is_descending~q\) # (\Add0~5_sumout\) ) ) ) # ( \Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ & ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\ & ( (!\is_descending~q\) # (\Add0~5_sumout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\ & ( 
-- (\Add0~5_sumout\ & \is_descending~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_is_descending~q\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~2_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~3_combout\,
	combout => \number~1_combout\);

-- Location: IOIBUF_X14_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X17_Y3_N18
\Mod2|auto_generated|divider|divider|op_20~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~114_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod2|auto_generated|divider|divider|op_20~114_cout\);

-- Location: LABCELL_X17_Y3_N21
\Mod2|auto_generated|divider|divider|op_20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~9_sumout\ = SUM(( !iterations(0) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~114_cout\ ))
-- \Mod2|auto_generated|divider|divider|op_20~10\ = CARRY(( !iterations(0) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~114_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_iterations(0),
	cin => \Mod2|auto_generated|divider|divider|op_20~114_cout\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~9_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~10\);

-- Location: LABCELL_X19_Y3_N30
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( iterations(0) ) + ( iterations(1) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( iterations(0) ) + ( iterations(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(1),
	datad => ALT_INV_iterations(0),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X19_Y3_N33
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( iterations(2) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~98\ = CARRY(( iterations(2) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(2),
	cin => \Add2~2\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: LABCELL_X16_Y3_N33
\Mod2|auto_generated|divider|divider|StageOut[676]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[676]~48_combout\ = ( \Add2~97_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add2~97_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[676]~48_combout\);

-- Location: MLABCELL_X18_Y3_N0
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~5_sumout\ = SUM(( \Add2~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~6\ = CARRY(( \Add2~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~5_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~6\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~7\);

-- Location: MLABCELL_X18_Y3_N3
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~101_sumout\ = SUM(( !\Add2~97_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~7\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~6\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~102\ = CARRY(( !\Add2~97_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~7\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~6\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~103\ = SHARE(\Add2~97_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~97_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~6\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~7\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~101_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~102\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~103\);

-- Location: LABCELL_X16_Y3_N0
\Mod2|auto_generated|divider|divider|StageOut[676]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[676]~47_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~101_sumout\ & ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[1]~101_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[676]~47_combout\);

-- Location: LABCELL_X17_Y3_N24
\Mod2|auto_generated|divider|divider|op_20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~5_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~5_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~1_sumout\)) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~10\ ))
-- \Mod2|auto_generated|divider|divider|op_20~6\ = CARRY(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~5_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~1_sumout\)) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~1_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[0]~5_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~10\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~5_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~6\);

-- Location: LABCELL_X17_Y3_N27
\Mod2|auto_generated|divider|divider|op_20~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~105_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[676]~48_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[676]~47_combout\) ) + ( VCC ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~6\ ))
-- \Mod2|auto_generated|divider|divider|op_20~106\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[676]~48_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[676]~47_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[676]~47_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[676]~48_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~6\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~105_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~106\);

-- Location: LABCELL_X17_Y3_N12
\Mod2|auto_generated|divider|divider|StageOut[704]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[704]~49_combout\ = ( \Mod2|auto_generated|divider|divider|StageOut[676]~47_combout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # (\Mod2|auto_generated|divider|divider|op_20~105_sumout\) ) ) # ( 
-- !\Mod2|auto_generated|divider|divider|StageOut[676]~47_combout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((\Mod2|auto_generated|divider|divider|op_20~105_sumout\))) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|StageOut[676]~48_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[676]~48_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~105_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[676]~47_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[704]~49_combout\);

-- Location: FF_X17_Y3_N13
\iterations[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[704]~49_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(2));

-- Location: LABCELL_X19_Y3_N36
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( iterations(3) ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~94\ = CARRY(( iterations(3) ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(3),
	cin => \Add2~98\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: MLABCELL_X18_Y3_N6
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~97_sumout\ = SUM(( !\Add2~93_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~103\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~102\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~98\ = CARRY(( !\Add2~93_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~103\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~102\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~99\ = SHARE(\Add2~93_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~93_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~102\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[1]~103\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~97_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~98\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~99\);

-- Location: LABCELL_X17_Y3_N30
\Mod2|auto_generated|divider|divider|op_20~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~101_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~97_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~93_sumout\)) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~106\ ))
-- \Mod2|auto_generated|divider|divider|op_20~102\ = CARRY(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~97_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~93_sumout\)) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~93_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[2]~97_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~106\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~101_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~102\);

-- Location: MLABCELL_X18_Y3_N51
\Mod2|auto_generated|divider|divider|StageOut[705]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[705]~46_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~101_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~97_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~93_sumout\)))) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~101_sumout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~97_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~93_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[2]~97_sumout\,
	datad => \ALT_INV_Add2~93_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~101_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[705]~46_combout\);

-- Location: FF_X18_Y3_N52
\iterations[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[705]~46_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(3));

-- Location: LABCELL_X19_Y3_N39
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( iterations(4) ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~90\ = CARRY(( iterations(4) ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(4),
	cin => \Add2~94\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: MLABCELL_X18_Y3_N9
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~93_sumout\ = SUM(( !\Add2~89_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~99\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~98\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~94\ = CARRY(( !\Add2~89_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~99\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~98\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~95\ = SHARE(\Add2~89_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~89_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~98\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[2]~99\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~93_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~94\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~95\);

-- Location: MLABCELL_X18_Y3_N54
\Mod2|auto_generated|divider|divider|StageOut[678]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[678]~43_combout\ = ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[3]~93_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[678]~43_combout\);

-- Location: LABCELL_X19_Y3_N3
\Mod2|auto_generated|divider|divider|StageOut[678]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[678]~44_combout\ = ( \Add2~89_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	dataf => \ALT_INV_Add2~89_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[678]~44_combout\);

-- Location: LABCELL_X17_Y3_N33
\Mod2|auto_generated|divider|divider|op_20~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~97_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[678]~44_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[678]~43_combout\) ) + ( VCC ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~102\ ))
-- \Mod2|auto_generated|divider|divider|op_20~98\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[678]~44_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[678]~43_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[678]~43_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[678]~44_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~102\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~97_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~98\);

-- Location: MLABCELL_X18_Y3_N57
\Mod2|auto_generated|divider|divider|StageOut[706]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[706]~45_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( (\Mod2|auto_generated|divider|divider|StageOut[678]~44_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[678]~43_combout\) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_20~97_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[678]~43_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[678]~44_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~97_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[706]~45_combout\);

-- Location: FF_X18_Y3_N58
\iterations[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[706]~45_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(4));

-- Location: LABCELL_X19_Y3_N42
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( iterations(5) ) + ( GND ) + ( \Add2~90\ ))
-- \Add2~86\ = CARRY(( iterations(5) ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(5),
	cin => \Add2~90\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: MLABCELL_X18_Y3_N12
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~89_sumout\ = SUM(( !\Add2~85_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~95\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~94\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~90\ = CARRY(( !\Add2~85_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~95\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~94\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~91\ = SHARE(\Add2~85_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~85_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~94\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[3]~95\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~89_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~90\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~91\);

-- Location: LABCELL_X17_Y3_N36
\Mod2|auto_generated|divider|divider|op_20~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~93_sumout\ = SUM(( VCC ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~89_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~85_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~98\ ))
-- \Mod2|auto_generated|divider|divider|op_20~94\ = CARRY(( VCC ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~89_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~85_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~85_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[4]~89_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~98\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~93_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~94\);

-- Location: MLABCELL_X18_Y3_N48
\Mod2|auto_generated|divider|divider|StageOut[707]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[707]~42_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~89_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (((\Mod2|auto_generated|divider|divider|op_20~93_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\) # ((\Add2~85_sumout\)))) ) ) # ( 
-- !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~89_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((\Mod2|auto_generated|divider|divider|op_20~93_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~85_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~93_sumout\,
	datad => \ALT_INV_Add2~85_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[4]~89_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[707]~42_combout\);

-- Location: FF_X18_Y3_N49
\iterations[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[707]~42_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(5));

-- Location: LABCELL_X19_Y3_N45
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( iterations(6) ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~82\ = CARRY(( iterations(6) ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(6),
	cin => \Add2~86\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: LABCELL_X16_Y3_N18
\Mod2|auto_generated|divider|divider|StageOut[680]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[680]~40_combout\ = ( \Add2~81_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add2~81_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[680]~40_combout\);

-- Location: MLABCELL_X18_Y3_N15
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~85_sumout\ = SUM(( !\Add2~81_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~91\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~90\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~86\ = CARRY(( !\Add2~81_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~91\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~90\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~87\ = SHARE(\Add2~81_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~81_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~90\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[4]~91\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~85_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~86\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~87\);

-- Location: LABCELL_X17_Y3_N15
\Mod2|auto_generated|divider|divider|StageOut[680]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[680]~39_combout\ = ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[5]~85_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[680]~39_combout\);

-- Location: LABCELL_X17_Y3_N39
\Mod2|auto_generated|divider|divider|op_20~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~89_sumout\ = SUM(( VCC ) + ( (\Mod2|auto_generated|divider|divider|StageOut[680]~40_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[680]~39_combout\) ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~94\ ))
-- \Mod2|auto_generated|divider|divider|op_20~90\ = CARRY(( VCC ) + ( (\Mod2|auto_generated|divider|divider|StageOut[680]~40_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[680]~39_combout\) ) + ( \Mod2|auto_generated|divider|divider|op_20~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[680]~39_combout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[680]~40_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~94\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~89_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~90\);

-- Location: LABCELL_X17_Y3_N9
\Mod2|auto_generated|divider|divider|StageOut[708]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[708]~41_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~89_sumout\ & ( ((!\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # (\Mod2|auto_generated|divider|divider|StageOut[680]~39_combout\)) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[680]~40_combout\) ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~89_sumout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((\Mod2|auto_generated|divider|divider|StageOut[680]~39_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[680]~40_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[680]~40_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[680]~39_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~89_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[708]~41_combout\);

-- Location: FF_X17_Y3_N10
\iterations[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[708]~41_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(6));

-- Location: LABCELL_X19_Y3_N48
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( iterations(7) ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~78\ = CARRY(( iterations(7) ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(7),
	cin => \Add2~82\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: MLABCELL_X18_Y3_N18
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~81_sumout\ = SUM(( !\Add2~77_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~87\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~86\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~82\ = CARRY(( !\Add2~77_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~87\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~86\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~83\ = SHARE(\Add2~77_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~77_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~86\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[5]~87\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~81_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~82\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~83\);

-- Location: LABCELL_X17_Y3_N42
\Mod2|auto_generated|divider|divider|op_20~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~85_sumout\ = SUM(( GND ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~81_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~77_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~90\ ))
-- \Mod2|auto_generated|divider|divider|op_20~86\ = CARRY(( GND ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~81_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~77_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~77_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[6]~81_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~90\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~85_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~86\);

-- Location: MLABCELL_X18_Y3_N36
\Mod2|auto_generated|divider|divider|StageOut[709]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[709]~38_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~81_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (((\Mod2|auto_generated|divider|divider|op_20~85_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\) # ((\Add2~77_sumout\)))) ) ) # ( 
-- !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~81_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((\Mod2|auto_generated|divider|divider|op_20~85_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~77_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~77_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~85_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[6]~81_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[709]~38_combout\);

-- Location: FF_X18_Y3_N37
\iterations[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[709]~38_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(7));

-- Location: LABCELL_X19_Y3_N51
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( iterations(8) ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~74\ = CARRY(( iterations(8) ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(8),
	cin => \Add2~78\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: MLABCELL_X18_Y3_N21
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~77_sumout\ = SUM(( \Add2~73_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~83\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~82\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~78\ = CARRY(( \Add2~73_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~83\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~82\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~79\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~73_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~82\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[6]~83\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~77_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~78\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~79\);

-- Location: MLABCELL_X18_Y3_N30
\Mod2|auto_generated|divider|divider|StageOut[682]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[682]~35_combout\ = ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[7]~77_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[682]~35_combout\);

-- Location: MLABCELL_X18_Y3_N45
\Mod2|auto_generated|divider|divider|StageOut[682]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[682]~36_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Add2~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~73_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[682]~36_combout\);

-- Location: LABCELL_X17_Y3_N45
\Mod2|auto_generated|divider|divider|op_20~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~81_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[682]~36_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[682]~35_combout\) ) + ( VCC ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~86\ ))
-- \Mod2|auto_generated|divider|divider|op_20~82\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[682]~36_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[682]~35_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[682]~35_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[682]~36_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~86\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~81_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~82\);

-- Location: MLABCELL_X18_Y3_N33
\Mod2|auto_generated|divider|divider|StageOut[710]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[710]~37_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( (\Mod2|auto_generated|divider|divider|StageOut[682]~35_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[682]~36_combout\) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_20~81_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~81_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[682]~36_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[682]~35_combout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[710]~37_combout\);

-- Location: FF_X18_Y3_N34
\iterations[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[710]~37_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(8));

-- Location: LABCELL_X19_Y3_N54
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( iterations(9) ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( iterations(9) ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(9),
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: MLABCELL_X18_Y3_N24
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~73_sumout\ = SUM(( !\Add2~69_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~79\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~78\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~74\ = CARRY(( !\Add2~69_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~79\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~78\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~75\ = SHARE(\Add2~69_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~69_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~78\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[7]~79\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~73_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~74\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~75\);

-- Location: LABCELL_X17_Y3_N48
\Mod2|auto_generated|divider|divider|op_20~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~77_sumout\ = SUM(( VCC ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~73_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~69_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~82\ ))
-- \Mod2|auto_generated|divider|divider|op_20~78\ = CARRY(( VCC ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~73_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~69_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~69_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[8]~73_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~82\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~77_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~78\);

-- Location: MLABCELL_X18_Y3_N39
\Mod2|auto_generated|divider|divider|StageOut[711]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[711]~34_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~73_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (((\Mod2|auto_generated|divider|divider|op_20~77_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\) # ((\Add2~69_sumout\)))) ) ) # ( 
-- !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~73_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((\Mod2|auto_generated|divider|divider|op_20~77_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~69_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~77_sumout\,
	datad => \ALT_INV_Add2~69_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[8]~73_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[711]~34_combout\);

-- Location: FF_X18_Y3_N40
\iterations[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[711]~34_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(9));

-- Location: LABCELL_X19_Y3_N57
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( iterations(10) ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~66\ = CARRY(( iterations(10) ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(10),
	cin => \Add2~70\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: MLABCELL_X18_Y3_N27
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~69_sumout\ = SUM(( !\Add2~65_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~75\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~74\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~70\ = CARRY(( !\Add2~65_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~75\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~74\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~71\ = SHARE(\Add2~65_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~65_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~74\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[8]~75\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~69_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~70\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~71\);

-- Location: LABCELL_X17_Y3_N6
\Mod2|auto_generated|divider|divider|StageOut[684]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[684]~31_combout\ = ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[9]~69_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[684]~31_combout\);

-- Location: LABCELL_X16_Y3_N48
\Mod2|auto_generated|divider|divider|StageOut[684]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[684]~32_combout\ = ( \Add2~65_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add2~65_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[684]~32_combout\);

-- Location: LABCELL_X17_Y3_N51
\Mod2|auto_generated|divider|divider|op_20~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~73_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[684]~32_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[684]~31_combout\) ) + ( VCC ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~78\ ))
-- \Mod2|auto_generated|divider|divider|op_20~74\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[684]~32_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[684]~31_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[684]~31_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[684]~32_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~78\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~73_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~74\);

-- Location: MLABCELL_X18_Y3_N42
\Mod2|auto_generated|divider|divider|StageOut[712]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[712]~33_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( (\Mod2|auto_generated|divider|divider|StageOut[684]~31_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[684]~32_combout\) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_20~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~73_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[684]~32_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[684]~31_combout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[712]~33_combout\);

-- Location: FF_X18_Y3_N43
\iterations[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[712]~33_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(10));

-- Location: LABCELL_X19_Y2_N0
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( iterations(11) ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~62\ = CARRY(( iterations(11) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(11),
	cin => \Add2~66\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: MLABCELL_X18_Y2_N0
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~65_sumout\ = SUM(( !\Add2~61_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~71\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~70\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~66\ = CARRY(( !\Add2~61_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~71\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~70\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~67\ = SHARE(\Add2~61_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~61_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~70\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[9]~71\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~65_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~66\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~67\);

-- Location: LABCELL_X17_Y3_N54
\Mod2|auto_generated|divider|divider|op_20~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~69_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~65_sumout\)) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~61_sumout\))) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~74\ ))
-- \Mod2|auto_generated|divider|divider|op_20~70\ = CARRY(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~65_sumout\)) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~61_sumout\))) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[10]~65_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~61_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~74\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~69_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~70\);

-- Location: LABCELL_X17_Y3_N3
\Mod2|auto_generated|divider|divider|StageOut[713]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[713]~30_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~65_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|op_20~69_sumout\)) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\) # (\Add2~61_sumout\)))) ) ) # ( 
-- !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~65_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (\Mod2|auto_generated|divider|divider|op_20~69_sumout\)) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- (((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & \Add2~61_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001000100011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~69_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datad => \ALT_INV_Add2~61_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[10]~65_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[713]~30_combout\);

-- Location: FF_X17_Y3_N4
\iterations[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[713]~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(11));

-- Location: LABCELL_X19_Y2_N3
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( iterations(12) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( iterations(12) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(12),
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: MLABCELL_X18_Y2_N3
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~61_sumout\ = SUM(( !\Add2~57_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~67\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~66\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~62\ = CARRY(( !\Add2~57_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~67\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~66\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~63\ = SHARE(\Add2~57_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~57_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~66\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[10]~67\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~61_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~62\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~63\);

-- Location: LABCELL_X16_Y3_N24
\Mod2|auto_generated|divider|divider|StageOut[686]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[686]~27_combout\ = ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[11]~61_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[686]~27_combout\);

-- Location: LABCELL_X16_Y3_N42
\Mod2|auto_generated|divider|divider|StageOut[686]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[686]~28_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Add2~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~57_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[686]~28_combout\);

-- Location: LABCELL_X17_Y3_N57
\Mod2|auto_generated|divider|divider|op_20~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~65_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[686]~28_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[686]~27_combout\) ) + ( GND ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~70\ ))
-- \Mod2|auto_generated|divider|divider|op_20~66\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[686]~28_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[686]~27_combout\) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[686]~27_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[686]~28_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~70\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~65_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~66\);

-- Location: LABCELL_X17_Y3_N0
\Mod2|auto_generated|divider|divider|StageOut[714]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[714]~29_combout\ = ( \Mod2|auto_generated|divider|divider|StageOut[686]~27_combout\ & ( (\Mod2|auto_generated|divider|divider|op_20~65_sumout\) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\) ) ) # ( 
-- !\Mod2|auto_generated|divider|divider|StageOut[686]~27_combout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (\Mod2|auto_generated|divider|divider|op_20~65_sumout\)) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[686]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~65_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[686]~28_combout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[686]~27_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[714]~29_combout\);

-- Location: FF_X17_Y3_N1
\iterations[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[714]~29_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(12));

-- Location: LABCELL_X19_Y2_N6
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( iterations(13) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( iterations(13) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(13),
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: MLABCELL_X18_Y2_N6
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~57_sumout\ = SUM(( \Add2~53_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~63\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~62\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~58\ = CARRY(( \Add2~53_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~63\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~62\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~59\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~53_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~62\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[11]~63\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~57_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~58\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~59\);

-- Location: LABCELL_X17_Y2_N0
\Mod2|auto_generated|divider|divider|op_20~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~61_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~57_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~53_sumout\)) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~66\ ))
-- \Mod2|auto_generated|divider|divider|op_20~62\ = CARRY(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~57_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~53_sumout\)) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~53_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[12]~57_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~66\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~61_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~62\);

-- Location: LABCELL_X19_Y2_N57
\Mod2|auto_generated|divider|divider|StageOut[715]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[715]~26_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~61_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~57_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~53_sumout\)))) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~61_sumout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~57_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~53_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011111111111010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[12]~57_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~53_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~61_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[715]~26_combout\);

-- Location: FF_X19_Y2_N59
\iterations[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[715]~26_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(13));

-- Location: LABCELL_X19_Y2_N9
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( iterations(14) ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~50\ = CARRY(( iterations(14) ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(14),
	cin => \Add2~54\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: LABCELL_X20_Y2_N0
\Mod2|auto_generated|divider|divider|StageOut[688]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[688]~24_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Add2~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~49_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[688]~24_combout\);

-- Location: MLABCELL_X18_Y2_N9
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~53_sumout\ = SUM(( \Add2~49_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~59\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~58\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~54\ = CARRY(( \Add2~49_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~59\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~58\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~55\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~49_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~58\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[12]~59\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~53_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~54\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~55\);

-- Location: MLABCELL_X18_Y2_N54
\Mod2|auto_generated|divider|divider|StageOut[688]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[688]~23_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~53_sumout\ & ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[13]~53_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[688]~23_combout\);

-- Location: LABCELL_X17_Y2_N3
\Mod2|auto_generated|divider|divider|op_20~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~57_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[688]~24_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[688]~23_combout\) ) + ( GND ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~62\ ))
-- \Mod2|auto_generated|divider|divider|op_20~58\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[688]~24_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[688]~23_combout\) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[688]~23_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[688]~24_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~62\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~57_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~58\);

-- Location: LABCELL_X20_Y2_N3
\Mod2|auto_generated|divider|divider|StageOut[716]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[716]~25_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( (\Mod2|auto_generated|divider|divider|StageOut[688]~23_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[688]~24_combout\) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_20~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[688]~24_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[688]~23_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~57_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[716]~25_combout\);

-- Location: FF_X20_Y2_N5
\iterations[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[716]~25_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(14));

-- Location: LABCELL_X19_Y2_N12
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( iterations(15) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( iterations(15) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(15),
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: MLABCELL_X18_Y2_N12
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~49_sumout\ = SUM(( \Add2~45_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~55\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~54\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~50\ = CARRY(( \Add2~45_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~55\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~54\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~51\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~45_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~54\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[13]~55\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~49_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~50\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~51\);

-- Location: LABCELL_X17_Y2_N6
\Mod2|auto_generated|divider|divider|op_20~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~53_sumout\ = SUM(( GND ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~49_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~45_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~58\ ))
-- \Mod2|auto_generated|divider|divider|op_20~54\ = CARRY(( GND ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~49_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~45_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~45_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[14]~49_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~58\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~53_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~54\);

-- Location: LABCELL_X20_Y2_N33
\Mod2|auto_generated|divider|divider|StageOut[717]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[717]~22_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~53_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~49_sumout\))) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~45_sumout\))) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~53_sumout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~49_sumout\))) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~45_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~45_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[14]~49_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~53_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[717]~22_combout\);

-- Location: FF_X20_Y2_N35
\iterations[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[717]~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(15));

-- Location: LABCELL_X19_Y2_N15
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( iterations(16) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~42\ = CARRY(( iterations(16) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(16),
	cin => \Add2~46\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: MLABCELL_X18_Y2_N15
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~45_sumout\ = SUM(( \Add2~41_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~51\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~50\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~46\ = CARRY(( \Add2~41_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~51\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~50\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~47\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~41_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~50\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[14]~51\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~45_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~46\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~47\);

-- Location: LABCELL_X20_Y2_N36
\Mod2|auto_generated|divider|divider|StageOut[690]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[690]~19_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~45_sumout\ & ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[15]~45_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[690]~19_combout\);

-- Location: LABCELL_X20_Y2_N6
\Mod2|auto_generated|divider|divider|StageOut[690]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[690]~20_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Add2~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~41_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[690]~20_combout\);

-- Location: LABCELL_X17_Y2_N9
\Mod2|auto_generated|divider|divider|op_20~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~49_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[690]~20_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[690]~19_combout\) ) + ( VCC ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~54\ ))
-- \Mod2|auto_generated|divider|divider|op_20~50\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[690]~20_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[690]~19_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[690]~19_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[690]~20_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~54\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~49_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~50\);

-- Location: LABCELL_X20_Y2_N42
\Mod2|auto_generated|divider|divider|StageOut[718]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[718]~21_combout\ = ( \Mod2|auto_generated|divider|divider|StageOut[690]~20_combout\ & ( (\Mod2|auto_generated|divider|divider|op_20~49_sumout\) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\) ) ) # ( 
-- !\Mod2|auto_generated|divider|divider|StageOut[690]~20_combout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (\Mod2|auto_generated|divider|divider|op_20~49_sumout\)) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[690]~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~49_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[690]~19_combout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[690]~20_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[718]~21_combout\);

-- Location: FF_X20_Y2_N44
\iterations[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[718]~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(16));

-- Location: LABCELL_X19_Y2_N18
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( iterations(17) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~38\ = CARRY(( iterations(17) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(17),
	cin => \Add2~42\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: MLABCELL_X18_Y2_N18
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~41_sumout\ = SUM(( !\Add2~37_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~47\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~46\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~42\ = CARRY(( !\Add2~37_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~47\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~46\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~43\ = SHARE(\Add2~37_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~37_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~46\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[15]~47\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~41_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~42\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~43\);

-- Location: LABCELL_X17_Y2_N12
\Mod2|auto_generated|divider|divider|op_20~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~45_sumout\ = SUM(( GND ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~41_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~37_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~50\ ))
-- \Mod2|auto_generated|divider|divider|op_20~46\ = CARRY(( GND ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~41_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~37_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~37_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[16]~41_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~50\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~45_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~46\);

-- Location: LABCELL_X20_Y2_N30
\Mod2|auto_generated|divider|divider|StageOut[719]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[719]~18_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~45_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~41_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~37_sumout\)))) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~45_sumout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~41_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~37_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[16]~41_sumout\,
	datad => \ALT_INV_Add2~37_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~45_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[719]~18_combout\);

-- Location: FF_X20_Y2_N32
\iterations[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[719]~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(17));

-- Location: LABCELL_X19_Y2_N21
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( iterations(18) ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~34\ = CARRY(( iterations(18) ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(18),
	cin => \Add2~38\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: LABCELL_X16_Y2_N15
\Mod2|auto_generated|divider|divider|StageOut[692]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[692]~16_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Add2~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~33_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[692]~16_combout\);

-- Location: MLABCELL_X18_Y2_N21
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~37_sumout\ = SUM(( \Add2~33_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~43\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~42\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~38\ = CARRY(( \Add2~33_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~43\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~42\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~39\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~33_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~42\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[16]~43\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~37_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~38\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~39\);

-- Location: MLABCELL_X18_Y2_N57
\Mod2|auto_generated|divider|divider|StageOut[692]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[692]~15_combout\ = ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[17]~37_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[692]~15_combout\);

-- Location: LABCELL_X17_Y2_N15
\Mod2|auto_generated|divider|divider|op_20~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~41_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[692]~16_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[692]~15_combout\) ) + ( VCC ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~46\ ))
-- \Mod2|auto_generated|divider|divider|op_20~42\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[692]~16_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[692]~15_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[692]~15_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[692]~16_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~46\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~41_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~42\);

-- Location: LABCELL_X20_Y2_N27
\Mod2|auto_generated|divider|divider|StageOut[720]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[720]~17_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~41_sumout\ & ( ((!\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # (\Mod2|auto_generated|divider|divider|StageOut[692]~15_combout\)) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[692]~16_combout\) ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~41_sumout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((\Mod2|auto_generated|divider|divider|StageOut[692]~15_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[692]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[692]~16_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[692]~15_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~41_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[720]~17_combout\);

-- Location: FF_X20_Y2_N29
\iterations[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[720]~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(18));

-- Location: LABCELL_X19_Y2_N24
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( iterations(19) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~30\ = CARRY(( iterations(19) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(19),
	cin => \Add2~34\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X18_Y2_N24
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~33_sumout\ = SUM(( !\Add2~29_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~39\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~38\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~34\ = CARRY(( !\Add2~29_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~39\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~38\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~35\ = SHARE(\Add2~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~29_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~38\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[17]~39\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~33_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~34\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~35\);

-- Location: LABCELL_X17_Y2_N18
\Mod2|auto_generated|divider|divider|op_20~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~37_sumout\ = SUM(( GND ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~33_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~29_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~42\ ))
-- \Mod2|auto_generated|divider|divider|op_20~38\ = CARRY(( GND ) + ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~33_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~29_sumout\)) ) + ( \Mod2|auto_generated|divider|divider|op_20~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~29_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[18]~33_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~42\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~37_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~38\);

-- Location: LABCELL_X20_Y2_N45
\Mod2|auto_generated|divider|divider|StageOut[721]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[721]~14_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~37_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~33_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~29_sumout\)))) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~37_sumout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~33_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~29_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010110111010101111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[18]~33_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datad => \ALT_INV_Add2~29_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~37_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[721]~14_combout\);

-- Location: FF_X20_Y2_N47
\iterations[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[721]~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(19));

-- Location: LABCELL_X19_Y2_N27
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( iterations(20) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~26\ = CARRY(( iterations(20) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(20),
	cin => \Add2~30\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X18_Y2_N27
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~29_sumout\ = SUM(( \Add2~25_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~35\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~34\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~30\ = CARRY(( \Add2~25_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~35\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~34\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~31\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~25_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~34\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[18]~35\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~29_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~30\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~31\);

-- Location: LABCELL_X16_Y2_N33
\Mod2|auto_generated|divider|divider|StageOut[694]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[694]~11_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~29_sumout\ & ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[19]~29_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[694]~11_combout\);

-- Location: LABCELL_X17_Y2_N57
\Mod2|auto_generated|divider|divider|StageOut[694]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[694]~12_combout\ = ( \Add2~25_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	dataf => \ALT_INV_Add2~25_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[694]~12_combout\);

-- Location: LABCELL_X17_Y2_N21
\Mod2|auto_generated|divider|divider|op_20~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~33_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[694]~12_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[694]~11_combout\) ) + ( GND ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~38\ ))
-- \Mod2|auto_generated|divider|divider|op_20~34\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[694]~12_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[694]~11_combout\) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[694]~11_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[694]~12_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~38\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~33_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~34\);

-- Location: LABCELL_X17_Y2_N54
\Mod2|auto_generated|divider|divider|StageOut[722]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[722]~13_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( (\Mod2|auto_generated|divider|divider|StageOut[694]~12_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[694]~11_combout\) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_20~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[694]~11_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~33_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[694]~12_combout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[722]~13_combout\);

-- Location: FF_X17_Y2_N55
\iterations[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[722]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(20));

-- Location: LABCELL_X19_Y2_N30
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( iterations(21) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~22\ = CARRY(( iterations(21) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(21),
	cin => \Add2~26\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: MLABCELL_X18_Y2_N30
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~25_sumout\ = SUM(( \Add2~21_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~31\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~30\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~26\ = CARRY(( \Add2~21_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~31\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~30\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~27\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~21_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~30\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[19]~31\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~25_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~26\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~27\);

-- Location: LABCELL_X17_Y2_N24
\Mod2|auto_generated|divider|divider|op_20~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~29_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~25_sumout\)) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~21_sumout\))) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~34\ ))
-- \Mod2|auto_generated|divider|divider|op_20~30\ = CARRY(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~25_sumout\)) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Add2~21_sumout\))) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[20]~25_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~21_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~34\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~29_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~30\);

-- Location: LABCELL_X20_Y2_N48
\Mod2|auto_generated|divider|divider|StageOut[723]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[723]~10_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~29_sumout\ & ( \Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( 
-- (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~25_sumout\))) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~21_sumout\)) ) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~29_sumout\ & ( \Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~25_sumout\))) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~21_sumout\)) ) ) ) # ( \Mod2|auto_generated|divider|divider|op_20~29_sumout\ & ( 
-- !\Mod2|auto_generated|divider|divider|op_20~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~21_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[20]~25_sumout\,
	datae => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~29_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[723]~10_combout\);

-- Location: FF_X20_Y2_N50
\iterations[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[723]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(21));

-- Location: LABCELL_X19_Y2_N33
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( iterations(22) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~18\ = CARRY(( iterations(22) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(22),
	cin => \Add2~22\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X18_Y2_N33
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~21_sumout\ = SUM(( \Add2~17_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~27\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~26\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~22\ = CARRY(( \Add2~17_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~27\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~26\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~17_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~26\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[20]~27\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~21_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~22\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~23\);

-- Location: LABCELL_X16_Y2_N24
\Mod2|auto_generated|divider|divider|StageOut[696]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[696]~7_combout\ = ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[21]~21_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[696]~7_combout\);

-- Location: LABCELL_X20_Y2_N54
\Mod2|auto_generated|divider|divider|StageOut[696]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[696]~8_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Add2~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~17_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[696]~8_combout\);

-- Location: LABCELL_X17_Y2_N27
\Mod2|auto_generated|divider|divider|op_20~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~25_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[696]~8_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[696]~7_combout\) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~30\ 
-- ))
-- \Mod2|auto_generated|divider|divider|op_20~26\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[696]~8_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[696]~7_combout\) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[696]~7_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[696]~8_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~30\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~25_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~26\);

-- Location: LABCELL_X20_Y2_N57
\Mod2|auto_generated|divider|divider|StageOut[724]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[724]~9_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~25_sumout\ & ( ((!\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # (\Mod2|auto_generated|divider|divider|StageOut[696]~8_combout\)) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[696]~7_combout\) ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~25_sumout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((\Mod2|auto_generated|divider|divider|StageOut[696]~8_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[696]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[696]~7_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[696]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~25_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[724]~9_combout\);

-- Location: FF_X20_Y2_N59
\iterations[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[724]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(22));

-- Location: LABCELL_X19_Y2_N36
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( iterations(23) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( iterations(23) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(23),
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X18_Y2_N36
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~17_sumout\ = SUM(( \Add2~13_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~23\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~22\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~18\ = CARRY(( \Add2~13_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~23\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~22\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~13_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~22\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[21]~23\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~17_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~18\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~19\);

-- Location: LABCELL_X17_Y2_N30
\Mod2|auto_generated|divider|divider|op_20~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~21_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~17_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~13_sumout\)) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~26\ ))
-- \Mod2|auto_generated|divider|divider|op_20~22\ = CARRY(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~17_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~13_sumout\)) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~13_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[22]~17_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~26\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~21_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~22\);

-- Location: LABCELL_X17_Y2_N48
\Mod2|auto_generated|divider|divider|StageOut[725]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[725]~6_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~21_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\) # 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~17_sumout\))) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~13_sumout\))) 
-- ) ) # ( !\Mod2|auto_generated|divider|divider|op_20~21_sumout\ & ( (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ((!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~17_sumout\))) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datac => \ALT_INV_Add2~13_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[22]~17_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~21_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[725]~6_combout\);

-- Location: FF_X17_Y2_N49
\iterations[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[725]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(23));

-- Location: LABCELL_X19_Y2_N39
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( iterations(24) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~10\ = CARRY(( iterations(24) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_iterations(24),
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X20_Y2_N12
\Mod2|auto_generated|divider|divider|StageOut[698]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[698]~4_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Add2~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~9_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[698]~4_combout\);

-- Location: MLABCELL_X18_Y2_N39
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~13_sumout\ = SUM(( \Add2~9_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~19\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~18\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~14\ = CARRY(( \Add2~9_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~19\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~18\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~9_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~18\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[22]~19\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~13_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~14\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~15\);

-- Location: LABCELL_X19_Y2_N54
\Mod2|auto_generated|divider|divider|StageOut[698]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[698]~3_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~13_sumout\ & ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[23]~13_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[698]~3_combout\);

-- Location: LABCELL_X17_Y2_N33
\Mod2|auto_generated|divider|divider|op_20~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~17_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[698]~4_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[698]~3_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~22\ 
-- ))
-- \Mod2|auto_generated|divider|divider|op_20~18\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[698]~4_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[698]~3_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_20~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[698]~3_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[698]~4_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~22\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~17_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~18\);

-- Location: LABCELL_X20_Y2_N15
\Mod2|auto_generated|divider|divider|StageOut[726]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[726]~5_combout\ = ( \Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( (\Mod2|auto_generated|divider|divider|StageOut[698]~3_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[698]~4_combout\) ) 
-- ) # ( !\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_20~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[698]~4_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[698]~3_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~17_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[726]~5_combout\);

-- Location: FF_X20_Y2_N17
\iterations[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[726]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(24));

-- Location: LABCELL_X19_Y2_N42
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( iterations(25) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~6\ = CARRY(( iterations(25) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_iterations(25),
	cin => \Add2~10\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X18_Y2_N42
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~9_sumout\ = SUM(( !\Add2~5_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~15\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~14\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~10\ = CARRY(( !\Add2~5_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~15\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~14\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~11\ = SHARE(\Add2~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~5_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~14\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[23]~15\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~9_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~10\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~11\);

-- Location: MLABCELL_X18_Y2_N45
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~105_sumout\ = SUM(( \Add2~101_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~11\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~10\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~106\ = CARRY(( \Add2~101_sumout\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~11\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~10\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~107\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~101_sumout\,
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~10\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~11\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~105_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~106\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~107\);

-- Location: MLABCELL_X18_Y2_N48
\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ = SUM(( VCC ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~107\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~106\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~107\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\);

-- Location: LABCELL_X17_Y2_N36
\Mod2|auto_generated|divider|divider|op_20~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~13_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~9_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~5_sumout\)) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~18\ ))
-- \Mod2|auto_generated|divider|divider|op_20~14\ = CARRY(( (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~9_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & (\Add2~5_sumout\)) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \ALT_INV_Add2~5_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[24]~9_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~18\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~13_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_20~14\);

-- Location: LABCELL_X17_Y2_N51
\Mod2|auto_generated|divider|divider|StageOut[727]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[727]~2_combout\ = ( \Add2~5_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((\Mod2|auto_generated|divider|divider|op_20~13_sumout\)))) # 
-- (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~9_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\))) ) ) # ( !\Add2~5_sumout\ & ( 
-- (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((\Mod2|auto_generated|divider|divider|op_20~13_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[24]~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[24]~9_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~13_sumout\,
	dataf => \ALT_INV_Add2~5_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[727]~2_combout\);

-- Location: FF_X17_Y2_N52
\iterations[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[727]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(25));

-- Location: LABCELL_X19_Y2_N45
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( GND ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add2~6\,
	sumout => \Add2~101_sumout\);

-- Location: LABCELL_X20_Y2_N24
\Mod2|auto_generated|divider|divider|StageOut[700]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[700]~50_combout\ = ( !\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[25]~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[25]~105_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[700]~50_combout\);

-- Location: LABCELL_X16_Y2_N42
\Mod2|auto_generated|divider|divider|StageOut[700]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[700]~51_combout\ = ( \Add2~101_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add2~101_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[700]~51_combout\);

-- Location: LABCELL_X17_Y2_N39
\Mod2|auto_generated|divider|divider|op_20~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~110_cout\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[700]~51_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[700]~50_combout\) ) + ( VCC ) + ( 
-- \Mod2|auto_generated|divider|divider|op_20~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[700]~50_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[700]~51_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_20~14\,
	cout => \Mod2|auto_generated|divider|divider|op_20~110_cout\);

-- Location: LABCELL_X17_Y2_N42
\Mod2|auto_generated|divider|divider|op_20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_20~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_20~110_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|op_20~110_cout\,
	sumout => \Mod2|auto_generated|divider|divider|op_20~1_sumout\);

-- Location: LABCELL_X19_Y3_N21
\Mod2|auto_generated|divider|divider|StageOut[702]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[702]~1_combout\ = ( !iterations(0) & ( \Mod2|auto_generated|divider|divider|op_20~1_sumout\ ) ) # ( iterations(0) & ( !\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( 
-- \Mod2|auto_generated|divider|divider|op_20~9_sumout\ ) ) ) # ( !iterations(0) & ( !\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_20~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~9_sumout\,
	datae => ALT_INV_iterations(0),
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[702]~1_combout\);

-- Location: FF_X19_Y3_N23
\iterations[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[702]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(0));

-- Location: LABCELL_X19_Y3_N0
\Mod2|auto_generated|divider|divider|StageOut[703]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[703]~0_combout\ = ( \Add2~1_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((\Mod2|auto_generated|divider|divider|op_20~5_sumout\)))) # 
-- (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\)) # (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~5_sumout\))) ) ) # ( !\Add2~1_sumout\ & ( 
-- (!\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (((\Mod2|auto_generated|divider|divider|op_20~5_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_20~1_sumout\ & (\Mod2|auto_generated|divider|divider|add_sub_25_result_int[0]~5_sumout\ & 
-- (!\Mod2|auto_generated|divider|divider|add_sub_25_result_int[26]~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000000111111101110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[0]~5_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_25_result_int[26]~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~1_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_20~5_sumout\,
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[703]~0_combout\);

-- Location: FF_X19_Y3_N2
\iterations[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[703]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iterations(1));

-- Location: LABCELL_X19_Y3_N6
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !iterations(2) & ( !iterations(7) & ( (!iterations(6) & (!iterations(4) & (!iterations(3) & !iterations(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_iterations(6),
	datab => ALT_INV_iterations(4),
	datac => ALT_INV_iterations(3),
	datad => ALT_INV_iterations(5),
	datae => ALT_INV_iterations(2),
	dataf => ALT_INV_iterations(7),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X19_Y3_N24
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !iterations(10) & ( !iterations(11) & ( (!iterations(9) & (!iterations(8) & (!iterations(12) & !iterations(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_iterations(9),
	datab => ALT_INV_iterations(8),
	datac => ALT_INV_iterations(12),
	datad => ALT_INV_iterations(13),
	datae => ALT_INV_iterations(10),
	dataf => ALT_INV_iterations(11),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X19_Y2_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !iterations(23) & ( !iterations(22) & ( (!iterations(25) & (!iterations(20) & (!iterations(24) & !iterations(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_iterations(25),
	datab => ALT_INV_iterations(20),
	datac => ALT_INV_iterations(24),
	datad => ALT_INV_iterations(21),
	datae => ALT_INV_iterations(23),
	dataf => ALT_INV_iterations(22),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X20_Y2_N18
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !iterations(14) & ( !iterations(16) & ( (!iterations(15) & (!iterations(17) & (!iterations(18) & !iterations(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_iterations(15),
	datab => ALT_INV_iterations(17),
	datac => ALT_INV_iterations(18),
	datad => ALT_INV_iterations(19),
	datae => ALT_INV_iterations(14),
	dataf => ALT_INV_iterations(16),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X19_Y3_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !iterations(0) & ( \Equal0~1_combout\ & ( (!iterations(1) & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_iterations(1),
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_iterations(0),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X39_Y1_N56
\number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \number~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(1));

-- Location: LABCELL_X39_Y1_N3
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

-- Location: LABCELL_X39_Y1_N57
\Mod0|auto_generated|divider|divider|StageOut[49]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\ = ( !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\);

-- Location: MLABCELL_X42_Y1_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( number(2) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( number(2) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X37_Y1_N39
\Mod0|auto_generated|divider|divider|StageOut[49]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\ = ( \Add1~5_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add1~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\);

-- Location: LABCELL_X40_Y1_N33
\Mod0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~10\ ))
-- \Mod0|auto_generated|divider|divider|op_8~14\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X40_Y2_N36
\number~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~4_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\))) # (\is_descending~q\ & (((\Add0~9_sumout\)))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (!\is_descending~q\) 
-- # (\Add0~9_sumout\) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\))) # (\is_descending~q\ & (((\Add0~9_sumout\)))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (\is_descending~q\ 
-- & \Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001001111010111110101111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \number~4_combout\);

-- Location: LABCELL_X40_Y2_N9
\number~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~5_combout\ = ( \number~4_combout\ & ( !\number~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_number~4_combout\,
	dataf => \ALT_INV_number~3_combout\,
	combout => \number~5_combout\);

-- Location: FF_X39_Y1_N29
\number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \number~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(2));

-- Location: LABCELL_X40_Y1_N36
\Mod0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Add1~9_sumout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~14\ ))
-- \Mod0|auto_generated|divider|divider|op_8~18\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Add1~9_sumout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~13_sumout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~18\);

-- Location: MLABCELL_X42_Y1_N9
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

-- Location: LABCELL_X41_Y1_N51
\Mod0|auto_generated|divider|divider|StageOut[59]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \Add1~9_sumout\ ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\);

-- Location: LABCELL_X41_Y1_N12
\number~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~6_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\) # (\Add0~13_sumout\))) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & (\Mod0|auto_generated|divider|divider|op_8~17_sumout\)) # 
-- (\is_descending~DUPLICATE_q\ & ((\Add0~13_sumout\))))) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (!\number~3_combout\ & (\is_descending~DUPLICATE_q\ & 
-- \Add0~13_sumout\)) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & 
-- (\Mod0|auto_generated|divider|divider|op_8~17_sumout\)) # (\is_descending~DUPLICATE_q\ & ((\Add0~13_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000000000010001000001000001010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~3_combout\,
	datab => \ALT_INV_is_descending~DUPLICATE_q\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	combout => \number~6_combout\);

-- Location: FF_X39_Y1_N11
\number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \number~6_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(3));

-- Location: MLABCELL_X42_Y1_N12
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

-- Location: MLABCELL_X42_Y1_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( number(5) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( number(5) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number(5),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X41_Y1_N21
\Mod0|auto_generated|divider|divider|StageOut[61]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\ & ( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) # (\Add1~17_sumout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~25_sumout\ & ( (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \Add1~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \ALT_INV_Add1~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~25_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\);

-- Location: LABCELL_X39_Y1_N24
\Mod0|auto_generated|divider|divider|StageOut[51]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\ & ( !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~29_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\);

-- Location: LABCELL_X41_Y1_N9
\Mod0|auto_generated|divider|divider|StageOut[51]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \Add1~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\);

-- Location: LABCELL_X40_Y1_N39
\Mod0|auto_generated|divider|divider|op_8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~37_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~18\ ))
-- \Mod0|auto_generated|divider|divider|op_8~38\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[51]~16_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[51]~15_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~16_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~37_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~38\);

-- Location: LABCELL_X40_Y1_N42
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

-- Location: LABCELL_X41_Y3_N18
\number~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~8_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~33_sumout\ & ( (!\is_descending~q\ & (((!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\)))) # (\is_descending~q\ & 
-- (\Add0~21_sumout\)) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~33_sumout\ & ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\ & \Mod0|auto_generated|divider|divider|op_8~1_sumout\)))) # (\is_descending~q\ & 
-- (\Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111110101001101011111010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~21_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~9_combout\,
	datac => \ALT_INV_is_descending~q\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	combout => \number~8_combout\);

-- Location: FF_X39_Y1_N26
\number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \number~8_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(5));

-- Location: MLABCELL_X42_Y1_N18
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

-- Location: LABCELL_X39_Y1_N27
\Mod0|auto_generated|divider|divider|StageOut[53]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ = ( !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\);

-- Location: LABCELL_X39_Y1_N54
\Mod0|auto_generated|divider|divider|StageOut[53]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \Add1~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\);

-- Location: LABCELL_X40_Y1_N45
\Mod0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~34\ ))
-- \Mod0|auto_generated|divider|divider|op_8~30\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X41_Y3_N6
\number~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~7_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~29_sumout\ & ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\)))) # (\is_descending~q\ & (\Add0~17_sumout\)) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~29_sumout\ & ( (!\is_descending~q\) # 
-- (\Add0~17_sumout\) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~29_sumout\ & ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\)))) # (\is_descending~q\ & (\Add0~17_sumout\)) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~29_sumout\ & ( (\Add0~17_sumout\ & 
-- \is_descending~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101011111010111110101111101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	datac => \ALT_INV_is_descending~q\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	combout => \number~7_combout\);

-- Location: FF_X39_Y1_N17
\number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \number~7_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(6));

-- Location: LABCELL_X39_Y1_N18
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

-- Location: LABCELL_X40_Y1_N48
\Mod0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~17_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\Add1~25_sumout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~25_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~30\,
	cout => \Mod0|auto_generated|divider|divider|op_8~22_cout\);

-- Location: LABCELL_X40_Y1_N51
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

-- Location: LABCELL_X40_Y2_N12
\Mod0|auto_generated|divider|divider|StageOut[56]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~5_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\);

-- Location: MLABCELL_X42_Y1_N39
\Mod0|auto_generated|divider|divider|StageOut[56]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\ = ( !number(0) & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_number(0),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\);

-- Location: LABCELL_X41_Y2_N33
\number~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\ & ( (!\is_descending~q\) # (\Add0~1_sumout\) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\ & ( (!\is_descending~q\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\)) # (\is_descending~q\ & ((\Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~1_combout\,
	combout => \number~0_combout\);

-- Location: FF_X40_Y1_N2
\number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \number~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(0));

-- Location: LABCELL_X41_Y1_N0
\number~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~2_combout\ = ( \is_descending~DUPLICATE_q\ & ( (!number(5) & (!number(6) & !number(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_number(5),
	datac => ALT_INV_number(6),
	datad => ALT_INV_number(4),
	dataf => \ALT_INV_is_descending~DUPLICATE_q\,
	combout => \number~2_combout\);

-- Location: LABCELL_X41_Y1_N18
\number~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~3_combout\ = ( !number(2) & ( (!number(0) & (!number(3) & (!number(1) & \number~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_number(0),
	datab => ALT_INV_number(3),
	datac => ALT_INV_number(1),
	datad => \ALT_INV_number~2_combout\,
	dataf => ALT_INV_number(2),
	combout => \number~3_combout\);

-- Location: LABCELL_X40_Y2_N0
\number~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~9_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\number~3_combout\ & ((!\is_descending~q\) # (\Add0~25_sumout\))) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\number~3_combout\ & (\Add0~25_sumout\ & \is_descending~q\)) ) ) ) # ( 
-- \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\number~3_combout\ & ((!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|op_8~37_sumout\))) # (\is_descending~q\ & 
-- (\Add0~25_sumout\)))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\number~3_combout\ & ((!\is_descending~q\ & 
-- ((\Mod0|auto_generated|divider|divider|op_8~37_sumout\))) # (\is_descending~q\ & (\Add0~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001000000000001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~3_combout\,
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	datad => \ALT_INV_is_descending~q\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \number~9_combout\);

-- Location: FF_X39_Y1_N59
\number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \number~9_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(4));

-- Location: LABCELL_X41_Y1_N54
\Mod0|auto_generated|divider|divider|StageOut[60]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \Add1~21_sumout\ ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~21_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~29_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\);

-- Location: LABCELL_X41_Y3_N24
\number~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~11_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~37_sumout\ & ( (!\is_descending~q\ & (((!\Mod0|auto_generated|divider|divider|op_8~1_sumout\)) # (\Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\))) # (\is_descending~q\ & 
-- (((\Add0~25_sumout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~37_sumout\ & ( (!\is_descending~q\ & (\Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ & ((\Mod0|auto_generated|divider|divider|op_8~1_sumout\)))) # (\is_descending~q\ 
-- & (((\Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110101111001001111010111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	combout => \number~11_combout\);

-- Location: LABCELL_X40_Y1_N54
\Mod0|auto_generated|divider|divider|StageOut[62]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\ = ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\);

-- Location: LABCELL_X40_Y1_N57
\Mod0|auto_generated|divider|divider|StageOut[62]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\);

-- Location: LABCELL_X41_Y1_N48
\Mod0|auto_generated|divider|divider|StageOut[61]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[61]~9_combout\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_8~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~9_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\);

-- Location: LABCELL_X41_Y1_N24
\Mod0|auto_generated|divider|divider|StageOut[60]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_8~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\);

-- Location: LABCELL_X40_Y1_N0
\Mod0|auto_generated|divider|divider|StageOut[59]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_8~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\);

-- Location: LABCELL_X41_Y1_N30
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

-- Location: LABCELL_X41_Y1_N33
\Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~13_sumout\)))) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~13_sumout\)))) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_is_descending~DUPLICATE_q\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~12_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X41_Y1_N36
\Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~25_sumout\)))) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~18\ ))
-- \Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~25_sumout\)))) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~25_sumout\,
	datab => \ALT_INV_is_descending~DUPLICATE_q\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~17_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X41_Y1_N39
\Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~21_sumout\)) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~10\ ))
-- \Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( (!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~21_sumout\)) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_is_descending~DUPLICATE_q\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~18_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X41_Y1_N42
\Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (!\is_descending~DUPLICATE_q\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\)))) # 
-- (\is_descending~DUPLICATE_q\ & (\Add0~17_sumout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))
-- \Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( (!\is_descending~DUPLICATE_q\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\)))) # (\is_descending~DUPLICATE_q\ & 
-- (\Add0~17_sumout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	datab => \ALT_INV_is_descending~DUPLICATE_q\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~13_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~14_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~6\);

-- Location: LABCELL_X41_Y1_N45
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

-- Location: LABCELL_X41_Y1_N3
\Div0|auto_generated|divider|divider|StageOut[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = ( \Div0|auto_generated|divider|divider|op_4~17_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\) # (\number~6_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_4~17_sumout\ & ( (\number~6_combout\ & \Div0|auto_generated|divider|divider|op_4~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_number~6_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LABCELL_X41_Y3_N0
\Mod0|auto_generated|divider|divider|StageOut[58]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( ((!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[49]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~11_combout\);

-- Location: MLABCELL_X42_Y2_N12
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

-- Location: MLABCELL_X42_Y2_N15
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

-- Location: MLABCELL_X42_Y2_N18
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

-- Location: MLABCELL_X42_Y2_N21
\Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\number~11_combout\ & 
-- (!\number~3_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))
-- \Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\number~11_combout\ & 
-- (!\number~3_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~11_combout\,
	datab => \ALT_INV_number~3_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X41_Y1_N57
\Div0|auto_generated|divider|divider|StageOut[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = ( \Div0|auto_generated|divider|divider|op_4~5_sumout\ & ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: MLABCELL_X42_Y2_N6
\Div0|auto_generated|divider|divider|StageOut[18]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ = ( \number~7_combout\ & ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_number~7_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: MLABCELL_X42_Y2_N24
\Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\number~8_combout\)) ) 
-- + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))
-- \Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\number~8_combout\)) ) + ( 
-- GND ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_number~8_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X42_Y2_N27
\Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\Div0|auto_generated|divider|divider|StageOut[18]~6_combout\) # (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~14\,
	cout => \Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: MLABCELL_X42_Y2_N30
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

-- Location: LABCELL_X41_Y2_N3
\Div0|auto_generated|divider|divider|StageOut[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ = ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LABCELL_X41_Y1_N6
\Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = ( \Div0|auto_generated|divider|divider|op_4~13_sumout\ & ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: MLABCELL_X42_Y2_N3
\Div0|auto_generated|divider|divider|StageOut[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \number~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \ALT_INV_number~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LABCELL_X41_Y2_N27
\Div0|auto_generated|divider|divider|StageOut[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ = ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \number~9_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- \Div0|auto_generated|divider|divider|op_4~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datac => \ALT_INV_number~9_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: MLABCELL_X42_Y2_N36
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

-- Location: MLABCELL_X42_Y2_N39
\Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\)))) # (\is_descending~q\ & 
-- (\Add0~5_sumout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\)))) # (\is_descending~q\ & (\Add0~5_sumout\)) ) 
-- + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~3_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~22\);

-- Location: MLABCELL_X42_Y2_N42
\Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (!\number~3_combout\ & (\number~4_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))
-- \Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (!\number~3_combout\ & (\number~4_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010011000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~3_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \ALT_INV_number~4_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~18\);

-- Location: MLABCELL_X42_Y2_N45
\Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~7_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))
-- \Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~7_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~14\);

-- Location: MLABCELL_X42_Y2_N48
\Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))
-- \Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10\);

-- Location: MLABCELL_X42_Y2_N51
\Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~10\,
	cout => \Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: MLABCELL_X42_Y2_N54
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

-- Location: LABCELL_X41_Y2_N0
\Div0|auto_generated|divider|divider|StageOut[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\);

-- Location: LABCELL_X41_Y2_N18
\Div0|auto_generated|divider|divider|StageOut[21]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~8_combout\ = ( \Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ ) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ ) ) ) # ( \Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( 
-- !\Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~8_combout\);

-- Location: LABCELL_X41_Y2_N9
\Div0|auto_generated|divider|divider|StageOut[20]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~9_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \number~5_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \Div0|auto_generated|divider|divider|op_5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_number~5_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~9_combout\);

-- Location: LABCELL_X41_Y2_N36
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

-- Location: LABCELL_X41_Y2_N39
\Div0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( VCC ) + ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\)))) # (\is_descending~q\ & 
-- (\Add0~1_sumout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001000100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~1_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~26_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~22_cout\);

-- Location: LABCELL_X41_Y2_N42
\Div0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\number~1_combout\)) ) 
-- + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_number~1_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~22_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~18_cout\);

-- Location: LABCELL_X41_Y2_N45
\Div0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[20]~9_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~14_cout\);

-- Location: LABCELL_X41_Y2_N48
\Div0|auto_generated|divider|divider|op_7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~8_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~10_cout\);

-- Location: LABCELL_X41_Y2_N51
\Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_6~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[22]~2_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[22]~0_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: LABCELL_X41_Y2_N54
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

-- Location: LABCELL_X41_Y2_N24
\decimal[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal[0]~0_combout\ = ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \decimal[0]~0_combout\);

-- Location: FF_X41_Y2_N26
\decimal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \decimal[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(0));

-- Location: LABCELL_X41_Y2_N6
\decimal[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal[1]~1_combout\ = !\Div0|auto_generated|divider|divider|op_6~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \decimal[1]~1_combout\);

-- Location: FF_X41_Y2_N8
\decimal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \decimal[1]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(1));

-- Location: MLABCELL_X37_Y2_N15
\decimal[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal[3]~3_combout\ = ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \decimal[3]~3_combout\);

-- Location: FF_X37_Y2_N17
\decimal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \decimal[3]~3_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(3));

-- Location: LABCELL_X41_Y2_N12
\decimal[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decimal[2]~2_combout\ = ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \decimal[2]~2_combout\);

-- Location: FF_X41_Y2_N14
\decimal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \decimal[2]~2_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => decimal(2));

-- Location: MLABCELL_X37_Y2_N21
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( decimal(2) & ( (!decimal(0)) # ((!decimal(1)) # (decimal(3))) ) ) # ( !decimal(2) & ( (decimal(3)) # (decimal(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(3),
	dataf => ALT_INV_decimal(2),
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X37_Y2_N36
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( decimal(2) & ( (decimal(1) & (decimal(0) & !decimal(3))) ) ) # ( !decimal(2) & ( (!decimal(3) & ((decimal(0)) # (decimal(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(0),
	datad => ALT_INV_decimal(3),
	dataf => ALT_INV_decimal(2),
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X37_Y2_N57
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( decimal(2) & ( (!decimal(1)) # (decimal(0)) ) ) # ( !decimal(2) & ( decimal(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datac => ALT_INV_decimal(1),
	dataf => ALT_INV_decimal(2),
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X37_Y2_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( decimal(2) & ( (!decimal(3) & (!decimal(0) $ (decimal(1)))) ) ) # ( !decimal(2) & ( (decimal(0) & (!decimal(1) & !decimal(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(3),
	dataf => ALT_INV_decimal(2),
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X37_Y2_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !decimal(2) & ( (decimal(1) & !decimal(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(0),
	dataf => ALT_INV_decimal(2),
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X37_Y2_N3
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( decimal(2) & ( !decimal(0) $ (!decimal(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_decimal(0),
	datac => ALT_INV_decimal(1),
	dataf => ALT_INV_decimal(2),
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X37_Y2_N30
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( decimal(2) & ( (!decimal(1) & (!decimal(0) & !decimal(3))) ) ) # ( !decimal(2) & ( (!decimal(1) & (decimal(0) & !decimal(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_decimal(1),
	datac => ALT_INV_decimal(0),
	datad => ALT_INV_decimal(3),
	dataf => ALT_INV_decimal(2),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X40_Y1_N6
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

-- Location: LABCELL_X40_Y1_N9
\Mod1|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~13_sumout\)))) ) + ( VCC ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~14_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_4~6\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~12_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~13_sumout\)))) ) + ( VCC ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~DUPLICATE_q\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_number~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~12_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~14_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~6\);

-- Location: LABCELL_X40_Y1_N12
\Mod1|auto_generated|divider|divider|op_4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~21_sumout\ = SUM(( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~25_sumout\)))) ) + ( GND ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~6\ ))
-- \Mod1|auto_generated|divider|divider|op_4~22\ = CARRY(( (!\number~3_combout\ & ((!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~17_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~25_sumout\)))) ) + ( GND ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~DUPLICATE_q\,
	datab => \ALT_INV_number~3_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~17_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~21_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~22\);

-- Location: LABCELL_X40_Y1_N15
\Mod1|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~21_sumout\)) ) + ( VCC ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~22\ ))
-- \Mod1|auto_generated|divider|divider|op_4~18\ = CARRY(( (!\is_descending~DUPLICATE_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~18_combout\))) # (\is_descending~DUPLICATE_q\ & (\Add0~21_sumout\)) ) + ( VCC ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~DUPLICATE_q\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~18_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~22\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X40_Y1_N18
\Mod1|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\is_descending~DUPLICATE_q\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\)))) # 
-- (\is_descending~DUPLICATE_q\ & (\Add0~17_sumout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_4~18\ ))
-- \Mod1|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\is_descending~DUPLICATE_q\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~14_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[62]~13_combout\)))) # (\is_descending~DUPLICATE_q\ & 
-- (\Add0~17_sumout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~DUPLICATE_q\,
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~13_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~14_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~18\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X40_Y1_N21
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

-- Location: LABCELL_X40_Y1_N3
\Mod1|auto_generated|divider|divider|StageOut[24]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\ = ( \Mod1|auto_generated|divider|divider|op_4~9_sumout\ & ( !\Mod1|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\);

-- Location: LABCELL_X41_Y3_N54
\Mod1|auto_generated|divider|divider|StageOut[24]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\ = ( \Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ( \number~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_number~7_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\);

-- Location: LABCELL_X40_Y2_N54
\number~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \number~10_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\is_descending~q\) # (\Add0~13_sumout\) ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\is_descending~q\ & \Add0~13_sumout\) ) ) ) # ( \Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( 
-- !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|op_8~17_sumout\))) # (\is_descending~q\ & (\Add0~13_sumout\)) ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( 
-- !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\is_descending~q\ & ((\Mod0|auto_generated|divider|divider|op_8~17_sumout\))) # (\is_descending~q\ & (\Add0~13_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \number~10_combout\);

-- Location: LABCELL_X41_Y3_N30
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

-- Location: LABCELL_X41_Y3_N33
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

-- Location: LABCELL_X41_Y3_N36
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

-- Location: LABCELL_X41_Y3_N39
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

-- Location: LABCELL_X41_Y3_N42
\Mod1|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_4~17_sumout\))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (\number~8_combout\)) ) 
-- + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~26\ ))
-- \Mod1|auto_generated|divider|divider|op_5~22\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_4~17_sumout\))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (\number~8_combout\)) ) + ( 
-- GND ) + ( \Mod1|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \ALT_INV_number~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~26\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X41_Y3_N45
\Mod1|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~22\ ))
-- \Mod1|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~9_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~22\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X41_Y3_N48
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

-- Location: LABCELL_X41_Y3_N27
\Mod1|auto_generated|divider|divider|StageOut[23]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\ = ( !\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_4~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\);

-- Location: LABCELL_X41_Y2_N15
\Mod1|auto_generated|divider|divider|StageOut[23]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\ = ( \Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ( \number~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_number~8_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\);

-- Location: LABCELL_X39_Y3_N39
\Mod1|auto_generated|divider|divider|StageOut[22]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\ = ( \Mod1|auto_generated|divider|divider|op_4~21_sumout\ & ( \Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ( \number~9_combout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|op_4~21_sumout\ & ( \Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ( \number~9_combout\ ) ) ) # ( \Mod1|auto_generated|divider|divider|op_4~21_sumout\ & ( !\Mod1|auto_generated|divider|divider|op_4~1_sumout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_number~9_combout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\);

-- Location: LABCELL_X41_Y2_N30
\Mod1|auto_generated|divider|divider|StageOut[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\ = ( \Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ( \number~6_combout\ ) ) # ( !\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- \Mod1|auto_generated|divider|divider|op_4~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datad => \ALT_INV_number~6_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\);

-- Location: LABCELL_X40_Y3_N36
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

-- Location: LABCELL_X40_Y3_N39
\Mod1|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\)))) # (\is_descending~q\ & 
-- (\Add0~5_sumout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~22_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_6~6\ = CARRY(( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~3_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\)))) # (\is_descending~q\ & (\Add0~5_sumout\)) ) + 
-- ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~3_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~22_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X40_Y3_N42
\Mod1|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~5_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (!\number~3_combout\ & ((\number~4_combout\)))) ) + ( \Mod1|auto_generated|divider|divider|op_6~6\ ))
-- \Mod1|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~5_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (!\number~3_combout\ & ((\number~4_combout\)))) ) + ( \Mod1|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~3_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \ALT_INV_number~4_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X40_Y3_N45
\Mod1|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~10\ ))
-- \Mod1|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X40_Y3_N48
\Mod1|auto_generated|divider|divider|op_6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~29_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~25_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~14\ ))
-- \Mod1|auto_generated|divider|divider|op_6~30\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~25_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~29_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~30\);

-- Location: LABCELL_X40_Y3_N51
\Mod1|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~30\ ))
-- \Mod1|auto_generated|divider|divider|op_6~26\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~30\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X40_Y3_N54
\Mod1|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~13_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~26\ ))
-- \Mod1|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~13_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~26\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X40_Y3_N57
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

-- Location: LABCELL_X41_Y3_N15
\Mod1|auto_generated|divider|divider|StageOut[32]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~7_combout\ = ( !\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_5~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~7_combout\);

-- Location: MLABCELL_X42_Y3_N24
\Mod1|auto_generated|divider|divider|StageOut[32]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~10_combout\ = ( \Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\ ) ) # ( \Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- !\Mod1|auto_generated|divider|divider|StageOut[24]~9_combout\ & ( \Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~9_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~10_combout\);

-- Location: LABCELL_X41_Y3_N3
\Mod1|auto_generated|divider|divider|StageOut[31]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~13_combout\ = ( \Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ( (\Mod1|auto_generated|divider|divider|StageOut[23]~11_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[23]~12_combout\) ) ) 
-- # ( !\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~13_combout\);

-- Location: LABCELL_X41_Y3_N21
\Mod1|auto_generated|divider|divider|StageOut[30]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\ = ( !\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_5~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\);

-- Location: LABCELL_X39_Y3_N42
\Mod1|auto_generated|divider|divider|StageOut[30]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~16_combout\ = ( \Mod1|auto_generated|divider|divider|StageOut[22]~15_combout\ & ( \Mod1|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~16_combout\);

-- Location: LABCELL_X41_Y3_N12
\Mod1|auto_generated|divider|divider|StageOut[29]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\ = ( \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\ & ( (\Mod1|auto_generated|divider|divider|op_5~9_sumout\) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\ & ( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & \Mod1|auto_generated|divider|divider|op_5~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\);

-- Location: LABCELL_X41_Y3_N57
\Mod1|auto_generated|divider|divider|StageOut[28]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\ = ( \Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ( \number~5_combout\ ) ) # ( !\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \Mod1|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datac => \ALT_INV_number~5_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\);

-- Location: LABCELL_X40_Y3_N6
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

-- Location: LABCELL_X40_Y3_N9
\Mod1|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( VCC ) + ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\)))) # (\is_descending~q\ & 
-- (\Add0~1_sumout\)) ) + ( \Mod1|auto_generated|divider|divider|op_7~26_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_7~6\ = CARRY(( VCC ) + ( (!\is_descending~q\ & (((\Mod0|auto_generated|divider|divider|StageOut[56]~1_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[56]~0_combout\)))) # (\is_descending~q\ & 
-- (\Add0~1_sumout\)) ) + ( \Mod1|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001000100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_descending~q\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~1_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~26_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X40_Y3_N12
\Mod1|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( GND ) + ( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\number~1_combout\)) ) + ( \Mod1|auto_generated|divider|divider|op_7~6\ ))
-- \Mod1|auto_generated|divider|divider|op_7~10\ = CARRY(( GND ) + ( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\number~1_combout\)) ) + ( \Mod1|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_number~1_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X40_Y3_N15
\Mod1|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( VCC ) + ( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\)) ) + ( \Mod1|auto_generated|divider|divider|op_7~10\ ))
-- \Mod1|auto_generated|divider|divider|op_7~14\ = CARRY(( VCC ) + ( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\)) ) + ( \Mod1|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~10\,
	sumout => \Mod1|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X40_Y3_N18
\Mod1|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_7~14\ ))
-- \Mod1|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~14\,
	sumout => \Mod1|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X40_Y3_N21
\Mod1|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod1|auto_generated|divider|divider|op_6~29_sumout\)) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[30]~16_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[30]~14_combout\)))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[30]~16_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~18\,
	cout => \Mod1|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X40_Y3_N24
\Mod1|auto_generated|divider|divider|op_7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~30_cout\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~25_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~13_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~34_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~30_cout\);

-- Location: LABCELL_X40_Y3_N27
\Mod1|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_6~17_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[32]~10_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[32]~7_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~7_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~10_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_7~30_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_7~22_cout\);

-- Location: LABCELL_X40_Y3_N30
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

-- Location: LABCELL_X40_Y3_N3
\Mod1|auto_generated|divider|divider|StageOut[43]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~1_combout\ = ( \Mod1|auto_generated|divider|divider|op_7~9_sumout\ & ( (!\Mod1|auto_generated|divider|divider|op_7~1_sumout\) # ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|op_6~5_sumout\)) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\number~1_combout\)))) ) ) # ( !\Mod1|auto_generated|divider|divider|op_7~9_sumout\ & ( (\Mod1|auto_generated|divider|divider|op_7~1_sumout\ 
-- & ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod1|auto_generated|divider|divider|op_6~5_sumout\)) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\number~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datad => \ALT_INV_number~1_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~1_combout\);

-- Location: FF_X40_Y3_N5
\unit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[43]~1_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unit(1));

-- Location: LABCELL_X40_Y3_N0
\Mod1|auto_generated|divider|divider|StageOut[44]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~3_combout\ = ( \Mod1|auto_generated|divider|divider|op_7~13_sumout\ & ( (!\Mod1|auto_generated|divider|divider|op_7~1_sumout\) # ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|op_6~9_sumout\)) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\)))) ) ) # ( !\Mod1|auto_generated|divider|divider|op_7~13_sumout\ & ( 
-- (\Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod1|auto_generated|divider|divider|op_6~9_sumout\)) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[28]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~3_combout\);

-- Location: FF_X40_Y3_N2
\unit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[44]~3_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unit(2));

-- Location: LABCELL_X39_Y3_N57
\Mod1|auto_generated|divider|divider|StageOut[45]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~6_combout\ = ( \Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod1|auto_generated|divider|divider|StageOut[29]~5_combout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_6~13_sumout\ ) ) ) # ( \Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- !\Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_7~17_sumout\ ) ) ) # ( !\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( !\Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- \Mod1|auto_generated|divider|divider|op_7~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~6_combout\);

-- Location: FF_X39_Y3_N59
\unit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[45]~6_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unit(3));

-- Location: LABCELL_X39_Y3_N0
\Mod1|auto_generated|divider|divider|StageOut[42]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~0_combout\ = ( \Mod1|auto_generated|divider|divider|op_7~5_sumout\ & ( \Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ( \number~0_combout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|op_7~5_sumout\ & ( \Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ( \number~0_combout\ ) ) ) # ( \Mod1|auto_generated|divider|divider|op_7~5_sumout\ & ( !\Mod1|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_number~0_combout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~0_combout\);

-- Location: FF_X39_Y3_N2
\unit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[42]~0_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unit(0));

-- Location: LABCELL_X39_Y2_N51
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( unit(3) & ( unit(0) ) ) # ( !unit(3) & ( unit(0) & ( !unit(1) $ (!unit(2)) ) ) ) # ( unit(3) & ( !unit(0) ) ) # ( !unit(3) & ( !unit(0) & ( (unit(2)) # (unit(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111111111111111111101100110011001101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(1),
	datab => ALT_INV_unit(2),
	datae => ALT_INV_unit(3),
	dataf => ALT_INV_unit(0),
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X39_Y2_N30
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( unit(2) & ( unit(0) & ( (!unit(3) & unit(1)) ) ) ) # ( !unit(2) & ( unit(0) & ( !unit(3) ) ) ) # ( !unit(2) & ( !unit(0) & ( (!unit(3) & unit(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000010101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(3),
	datac => ALT_INV_unit(1),
	datae => ALT_INV_unit(2),
	dataf => ALT_INV_unit(0),
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X39_Y2_N39
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( unit(2) & ( unit(0) ) ) # ( !unit(2) & ( unit(0) ) ) # ( unit(2) & ( !unit(0) & ( !unit(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(1),
	datae => ALT_INV_unit(2),
	dataf => ALT_INV_unit(0),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X39_Y3_N24
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( unit(2) & ( (!unit(3) & (!unit(1) $ (unit(0)))) ) ) # ( !unit(2) & ( (!unit(1) & (!unit(3) & unit(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100001001000010000001000000010001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(1),
	datab => ALT_INV_unit(3),
	datac => ALT_INV_unit(0),
	datae => ALT_INV_unit(2),
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X39_Y2_N42
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( !unit(2) & ( !unit(0) & ( unit(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_unit(1),
	datae => ALT_INV_unit(2),
	dataf => ALT_INV_unit(0),
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X39_Y3_N6
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( unit(0) & ( (unit(2) & !unit(1)) ) ) # ( !unit(0) & ( (unit(2) & unit(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(2),
	datac => ALT_INV_unit(1),
	datae => ALT_INV_unit(0),
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X39_Y2_N12
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( !unit(2) & ( unit(0) & ( (!unit(3) & !unit(1)) ) ) ) # ( unit(2) & ( !unit(0) & ( (!unit(3) & !unit(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_unit(3),
	datac => ALT_INV_unit(1),
	datae => ALT_INV_unit(2),
	dataf => ALT_INV_unit(0),
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X5_Y26_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


