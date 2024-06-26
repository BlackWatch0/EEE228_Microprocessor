onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+final_design -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.final_design xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {final_design.udo}

run -all

endsim

quit -force
