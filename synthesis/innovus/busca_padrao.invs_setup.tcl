#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 10/15/2024 15:08:48
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
source innovus/busca_padrao.flowkit_settings.tcl

source innovus/busca_padrao.invs_init.tcl

# Reading metrics file
######################
read_metric -id current innovus/busca_padrao.metrics.json 



# Mode Setup
###########################################################
source innovus/busca_padrao.mode

# Import list of instances with subdesigns having boundary optimization disabled
################################################################################
set_db opt_keep_ports innovus/busca_padrao.boundary_opto.tcl 

