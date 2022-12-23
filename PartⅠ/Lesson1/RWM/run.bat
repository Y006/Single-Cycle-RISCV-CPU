chcp 65001
iverilog -o memory_sim.vvp memory.v tb_memory.v
vvp memory_sim.vvp