onerror {exit -code 1}
vlib work
vcom -work work async_two_digits_counter.vho
vcom -work work Waveform45.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.async_two_digits_counter_vhd_vec_tst
vcd file -direction async_two_digits_counter.msim.vcd
vcd add -internal async_two_digits_counter_vhd_vec_tst/*
vcd add -internal async_two_digits_counter_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
