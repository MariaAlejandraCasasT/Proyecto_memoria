onerror {exit -code 1}
vlib work
vlog -work work ROM_P.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ROM_P_vlg_vec_tst -voptargs="+acc"
vcd file -direction ROM_P.msim.vcd
vcd add -internal ROM_P_vlg_vec_tst/*
vcd add -internal ROM_P_vlg_vec_tst/i1/*
run -all
quit -f
