# RISC-V Steel Core Synthesis

## About the Project
This project focuses on synthesizing the RISC-V Steel Core using Cadence EDA tools. The synthesis process encompasses both logical and physical synthesis steps to integrate the Steel Core into a complete SoC design.

The RISC-V Steel Core, developed and maintained by [Rafael Calçada](https://github.com/riscv-steel/riscv-steel), is a microcontroller design written in Verilog that implements the RV32I instruction set. As per its [GitHub page](https://github.com/riscv-steel/riscv-steel):

> RISC-V Steel is a microcontroller design developed in Verilog that implements the RV32I instruction set of RISC-V. It is designed for easy, seamless integration into embedded systems, systems-on-chip (SoC), and FPGA designs, facilitating the rapid development of innovative RISC-V applications.

This project uses version [v2.2](https://github.com/riscv-steel/riscv-steel/releases/tag/v2.2) of the RISC-V Steel Core, which introduces significant updates compared to the version available on OpenCores. Details about these differences are beyond the scope of this document.

---

## Prerequisites

1. Ensure you are using the `tcsh` shell.
2. Have Cadence EDA tools installed and properly configured.
3. Source the required environment scripts:
    ```tcsh
    source /scripts/set_cadence.csh
    source /scripts/set_cadence_innovus161.csh
    ```

4. Set the project root directory:
    ```tcsh
    set PROJ_HOME=`pwd`
    ```

---

## Workflow Overview

### 1. RTL Simulation

Run the RTL simulation to verify the behavior of the Verilog code:
```tcsh
cd "$PROJ_HOME/sim/tb"
irun -f file_list.f
```

### 2. Logical Synthesis

Execute logical synthesis with Cadence Genus:
```tcsh
cd "$PROJ_HOME/synthesis/"
genus -files synth.tcl
```

The synthesis process should generate an output similar to this:
```plaintext
** To load the database source innovus/rvsteel_core.invs_setup.tcl in an Innovus session.
** To load the database source innovus/rvsteel_core.genus_setup.tcl in a Genus(TM) Synthesis Solution session.
Finished exporting design data for 'rvsteel_core' (command execution time mm:ss cpu = 00:00, real = 00:02).
```

To open the Genus GUI after synthesis:
```tcsh
gui_show
```

---

### 3. Physical Synthesis

#### Preparing the Top Module
Integrate the `top.v` file with the synthesized `rvsteel_core.v`:
```tcsh
cp $PROJ_HOME/top.v /tmp/rvsteel_core.v && \
echo "\n" >> /tmp/rvsteel_core.v && \
cat $PROJ_HOME/synthesis/innovus/rvsteel_core.v >> /tmp/rvsteel_core.v && \
mv /tmp/rvsteel_core.v $PROJ_HOME/synthesis/innovus/rvsteel_core.v && \
echo "Successfully added the pads' top!"
```

#### Physical Synthesis Steps
Launch Innovus in GUI mode:
```tcsh
innovus -common_ui
```

Run the synthesis steps in sequence:
```tcsh
source physical/1_init.tcl              # Floorplanning
source physical/2_power_plan.tcl        # Power planning
source physical/3_pin_clock.tcl         # Pin and clock planning
source physical/4_nano_route.tcl        # Nano routing
source physical/5_fillers_reports.tcl   # Adding fillers
source physical/6_netlist_sdf.tcl       # Netlist generation and SDF
```

Alternatively, execute all steps in one command:
```tcsh
source run_all.tcl
```

---

### 4. Verification

#### Design Rule Check (DRC)
```tcsh
check_drc
```

#### Connectivity Check
```tcsh
check_connectivity -type all -error 1000 -warning 50
```

#### Geometry Check
This step requires manual interaction in the Innovus GUI.

#### Timing Analysis
- **Pre-CTS Timing**:
  ```tcsh
  time_design -pre_cts
  ```

- **Post-CTS Timing**:
  ```tcsh
  eval_legacy {timeDesign -postCTS}
  ```

- **Post-Routing Timing**:
  ```tcsh
  eval_legacy {timeDesign -postRoute}
  ```

---

## Additional Notes
- Ensure all tool versions are compatible with the project's requirements.
- Refer to Cadence documentation for further details on specific commands and processes.

## Authors
- Lucas Ferst Balbinot
- Vitória Lentz
- Wellington Machado de Espindula