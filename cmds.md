

## Setup

```bash
tcsh
```

```tcsh
source /scripts/set_cadence.csh
source /scripts/set_cadence_innovus161.csh
```

## Logical Synthesis

```csh
PROJ_HOME=$(pwd)
cd synthesis/
genus -files synth.tcl
```

## Physical Synthesis

