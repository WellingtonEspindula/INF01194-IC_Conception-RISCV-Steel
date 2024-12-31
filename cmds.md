

## Setup

```bash
tcsh
```

```tcsh
source /scripts/set_cadence.csh
source /scripts/set_cadence_innovus161.csh
```

## RTL Simulation

```csh
cd sim/tb
irun -f file_list.f
```

## Logical Synthesis

```csh
PROJ_HOME=$(pwd)
cd synthesis/
genus -files synth.tcl
```

## Physical Synthesis

