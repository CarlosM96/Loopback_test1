onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib gtwizard_1_opt

do {wave.do}

view wave
view structure
view signals

do {gtwizard_1.udo}

run -all

quit -force
