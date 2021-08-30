onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+gtwizard_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gtwizard_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {gtwizard_1.udo}

run -all

endsim

quit -force
