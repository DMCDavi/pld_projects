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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/02/2023 20:10:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          async_two_digits_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY async_two_digits_counter_vhd_vec_tst IS
END async_two_digits_counter_vhd_vec_tst;
ARCHITECTURE async_two_digits_counter_arch OF async_two_digits_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL digit_one : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL digit_two : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL reset : STD_LOGIC;
SIGNAL revert : STD_LOGIC;
COMPONENT async_two_digits_counter
	PORT (
	clk : IN STD_LOGIC;
	digit_one : OUT STD_LOGIC_VECTOR(0 TO 6);
	digit_two : OUT STD_LOGIC_VECTOR(0 TO 6);
	reset : IN STD_LOGIC;
	revert : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : async_two_digits_counter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	digit_one => digit_one,
	digit_two => digit_two,
	reset => reset,
	revert => revert
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500 ps;
	clk <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		reset <= '0';
		WAIT FOR 51750 ps;
		reset <= '1';
		WAIT FOR 51750 ps;
	END LOOP;
	reset <= '0';
	WAIT FOR 51750 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- revert
t_prcs_revert: PROCESS
BEGIN
LOOP
	revert <= '0';
	WAIT FOR 50000 ps;
	revert <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_revert;
END async_two_digits_counter_arch;
