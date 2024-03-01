onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib final_design_opt

do {wave.do}

view wave
view structure
view signals

do {final_design.udo}

run -all

quit -force
