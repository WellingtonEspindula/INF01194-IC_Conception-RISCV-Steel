#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 11/13/2024 23:22:19
#
#####################################################################


read_mmmc innovus/busca_padrao.mmmc.tcl

read_physical -lef {/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_5V.lef}

read_netlist innovus/busca_padrao.v

init_design -skip_sdc_read
