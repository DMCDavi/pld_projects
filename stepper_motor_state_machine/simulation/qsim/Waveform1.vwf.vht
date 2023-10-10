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
-- Generated on "10/10/2023 20:19:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          stepper_motor_state_machine
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY stepper_motor_state_machine_vhd_vec_tst IS
END stepper_motor_state_machine_vhd_vec_tst;
ARCHITECTURE stepper_motor_state_machine_arch OF stepper_motor_state_machine_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL dir : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT stepper_motor_state_machine
	PORT (
	A : OUT STD_LOGIC;
	B : OUT STD_LOGIC;
	C : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	D : OUT STD_LOGIC;
	dir : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : stepper_motor_state_machine
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	clk => clk,
	D => D,
	dir => dir,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- dir
t_prcs_dir: PROCESS
BEGIN
	dir <= '1';
	WAIT FOR 250000 ps;
	dir <= '0';
	WAIT FOR 200000 ps;
	dir <= '1';
	WAIT FOR 50000 ps;
	dir <= '0';
	WAIT FOR 100000 ps;
	dir <= '1';
	WAIT FOR 100000 ps;
	dir <= '0';
WAIT;
END PROCESS t_prcs_dir;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
	WAIT FOR 40000 ps;
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
	WAIT FOR 40000 ps;
	rst <= '1';
	WAIT FOR 200000 ps;
	rst <= '0';
	WAIT FOR 80000 ps;
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
	WAIT FOR 120000 ps;
	rst <= '1';
	WAIT FOR 240000 ps;
	rst <= '0';
	WAIT FOR 120000 ps;
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END stepper_motor_state_machine_arch;
