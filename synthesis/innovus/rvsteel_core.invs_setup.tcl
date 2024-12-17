#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 12/17/2024 07:34:08
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# User Specified CPU usage for Innovus
######################################
set_multi_cpu_usage -local_cpu 8


# Design Import
###########################################################
## Reading FlowKit settings file
source innovus/rvsteel_core.flowkit_settings.tcl

source innovus/rvsteel_core.invs_init.tcl

# Reading metrics file
######################
read_metric -id current innovus/rvsteel_core.metrics.json 



# Mode Setup
###########################################################
source innovus/rvsteel_core.mode

# Import list of instances with subdesigns having boundary optimization disabled
################################################################################
set_db opt_keep_ports innovus/rvsteel_core.boundary_opto.tcl 

