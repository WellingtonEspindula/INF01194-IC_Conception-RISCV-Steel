# RISC-V Steel Core Synthesis

## About the project
This project aims to develop the synthesis of the RISC-V Steel Core using Cadence EDA tools.
The following commands were used to do the whole synthesis of the SoC.

THe RISC-V Steel was developed and maintened by Rafael Calçada. According to its own [GitHub page](https://github.com/riscv-steel/riscv-steel):

> RISC-V Steel is a microcontroller design developed in Verilog that implements the RV32I instruction set of RISC-V. It is designed for easy, seamless integration into embedded systems, systems-on-chip (SoC), and FPGA designs, facilitating the rapid development of innovative RISC-V applications.

The RISC-V Steel version used for this project was the release [v2.2](https://github.com/riscv-steel/riscv-steel/releases/tag/v2.2). There are plenty of major differences between the RISC-V Steel v2.2 with the version available in OpenCores. I'll not discussing them.

## Setup

Change the bash to `tcsh`

```bash
tcsh
```

Add cadence and innovus scripts.

```tcsh
source /scripts/set_cadence.csh
source /scripts/set_cadence_innovus161.csh
```

### Setup project root dir

```
set PROJ_HOME=`pwd`
```

## RTL Simulation

Simulate the RTL code.

```csh
cd "$PROJ_HOME/sim/tb"
irun -f file_list.f
```

## Logical Synthesis

Then, run the logical synthesis.

```csh
cd "$PROJ_HOME/synthesis/"
genus -files synth.tcl
```

The expected output should be something like the following.

```result
** To load the database source innovus/rvsteel_core.invs_setup.tcl in an Innovus session.
** To load the database source innovus/rvsteel_core.genus_setup.tcl in an Genus(TM) Synthesis Solution session.
Finished exporting design data for 'rvsteel_core' (command execution time mm:ss cpu = 00:00, real = 00:02).
```

After finish the synthesis, open the GUI.

```console
$ genus@root:> gui_show
```


## Physical Synthesis

### Add top with the PADs

Need to copy the `top.v` to the top of the synthetized `rvsteel_core.v`.

```csh
cp $PROJ_HOME/top.v /tmp/rvsteel_core.v && \
echo "\n" >> /tmp/rvsteel_core.v && cat $PROJ_HOME/synthesis/innovus/rvsteel_core.v >> /tmp/rvsteel_core.v && \
mv /tmp/rvsteel_core.v $PROJ_HOME/synthesis/innovus/rvsteel_core.v && \
echo "Successfully added the pads' top!"
```

### Synthesis

Open innovus with the GUI.

```csh
innovus -common_ui
```

Then run all the synthesis steps.

```csh
source physical/1_init.tcl              # 1. foorplaning
source physical/2_power_plan.tcl        # 2. power planning
source physical/3_pin_clock.tcl         # 3. 
source physical/4_nano_route.tcl        # 4. nano route
source physical/5_fillers_reports.tcl   # 5. fillers 
source physical/6_netlist_sdf.tcl       # 6. 
```

or 

```csh
source run_all.tcl
```

### Verification

#### Check DRC

```csh
check_drc
```

#### Check Connectivity

```csh
check_connectivity -type all -error 1000 -warning 50
```

### Check Geometry

Sorry, it must be done via GUI

### Timing verification

Pre CTS

```csh
time_design -pre_cts
```

Post CTS

```csh
eval_legacy {timeDesign -postCTS}
```

Post Route

```csh
eval_legacy {timeDesign -postRoute}
```
