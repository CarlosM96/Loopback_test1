vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1_common_reset.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1/example_design/support/gtwizard_1_clock_module.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1_common.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1_gt_usrclk_source.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1_support.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1_cpll_railing.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1/example_design/gtwizard_1_tx_startup_fsm.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1/example_design/gtwizard_1_rx_startup_fsm.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1_init.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1_gt.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1_multi_gt.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1/example_design/gtwizard_1_sync_block.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_1/gtwizard_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

