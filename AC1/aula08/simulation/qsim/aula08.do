onerror {exit -code 1}
vlib work
vcom -work work aula08.vho
vcom -work work alu.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ALU32_vhd_vec_tst
vcd file -direction aula08.msim.vcd
vcd add -internal ALU32_vhd_vec_tst/*
vcd add -internal ALU32_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
