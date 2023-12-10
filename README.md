# Simulator Environment for the thesis "Multi Energy and Timing Mode Simulation for Non-Volatile Main Memory"

In the thesis, support for simulating different energy and timing areas was added. This repository contains all code needed to use the adjusted simulaton environment. It consists of gem5 (http://www.gem5.org) and NVMain 2.0 (https://github.com/SEAL-UCSB/NVmain). 

## How to run the simulation

- use the provided dockerbuild environment to compile gem5 and NVMain
- use the makefile in nvm-oma_nvm-rt to run the simulation environment

## How to use area definitions and write mode interface

Most important points for the correct usage:

### Area Definitions

- Use "MemoryArea" as the selected MemoryController
- Use key "MemoryAreas" in the configuration file to select "energy", "timing" or "both" as the simulation mode
- Use keys "AreaFile", "EnergyFile" or "TimingFile" to specify the area configuration file

### Area Trace Writer

select one of the following trace writer:
- "AreaAccessTrace" - only output of the individual memory accesses
- "AreaStatisticsTrace" - only output of the statistics
- "AreaTrace" - output of both, individual memory accesses and statistics

### Write Mode Interface

- define write modes in "TU-Do_nvmain/Areas/interface-config.h"
- example to use the interface can be found in "nvm-oma_nvm-rt/application/test_app.cpp" 
	- defines the correct struct and writes the magic word
	- changes the write mode in an example function

