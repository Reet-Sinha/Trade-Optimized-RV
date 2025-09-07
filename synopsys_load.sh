#!/bin/bash

if [[ $- == *i* ]]
then
	module load Synopsys_x86-64/2024

	export GUI_TIMEOUT=1h

	export OPENRAM=/class/ece411/OpenRAM
	export FREEPDK45=/class/ece411/freepdk-45nm
	export CBP2016=/class/ece411/cbp2016
	export DW=/software/Synopsys-2024_x86_64/icc/W-2024.09/dw
	export UVM_HOME=/software/Synopsys-2024_x86_64/vcs/W-2024.09/etc/uvm-1.2

	export PATH=$PATH:/class/ece411/riscv/bin:/class/ece411/verilator/bin:/class/ece411/cacti:
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/class/ece411/riscv/lib:/class/ece411/riscv/lib64:

fi
