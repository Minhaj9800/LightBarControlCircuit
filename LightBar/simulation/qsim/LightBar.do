onerror {quit -f}
vlib work
vlog -work work LightBar.vo
vlog -work work LightBar.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.LightBar_vlg_vec_tst
vcd file -direction LightBar.msim.vcd
vcd add -internal LightBar_vlg_vec_tst/*
vcd add -internal LightBar_vlg_vec_tst/i1/*
add wave /*
run -all
