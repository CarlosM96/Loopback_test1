vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0_common_reset.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0/example_design/support/gtwizard_0_clock_module.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0_common.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0_gt_usrclk_source.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0_support.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0_cpll_railing.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0/example_design/gtwizard_0_tx_startup_fsm.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0/example_design/gtwizard_0_rx_startup_fsm.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0_init.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0_gt.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0_multi_gt.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0/example_design/gtwizard_0_gtrxreset_seq.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0/example_design/gtwizard_0_rxpmarst_seq.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0/example_design/gtwizard_0_rxrate_seq.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0/example_design/gtwizard_0_sync_block.v" \
"../../../../Loopback_test1.srcs/sources_1/ip/gtwizard_0/gtwizard_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

