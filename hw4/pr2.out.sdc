## Generated SDC file "pr2.out.sdc"

## Copyright (C) 2019  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

## DATE    "Tue Dec 21 23:43:51 2021"

##
## DEVICE  "EP2AGX45CU17I3"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {seven_seg:seven_seg|cl_cl[2]} -period 1.000 -waveform { 0.000 0.500 } [get_registers {seven_seg:seven_seg|cl_cl[2]}]
create_clock -name {clock} -period 1.000 -waveform { 0.000 0.500 } [get_ports {clock}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {clock_master} -source [get_ports {clock}] -divide_by 1048576 -master_clock {clock} [get_registers {cl_cr[19]}] 
create_generated_clock -name {display_clock} -source [get_ports {clock}] -divide_by 4 -master_clock {clock} [get_registers {seven_seg:seven_seg|cl_cl[2]}] 
create_generated_clock -name {clock_int} -source [get_ports {clock}] -divide_by 65536 -master_clock {clock} [get_registers {cl_cr[15]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {seven_seg:seven_seg|cl_cl[2]}] -rise_to [get_clocks {seven_seg:seven_seg|cl_cl[2]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {seven_seg:seven_seg|cl_cl[2]}] -fall_to [get_clocks {seven_seg:seven_seg|cl_cl[2]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {seven_seg:seven_seg|cl_cl[2]}] -rise_to [get_clocks {clock}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {seven_seg:seven_seg|cl_cl[2]}] -fall_to [get_clocks {clock}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {seven_seg:seven_seg|cl_cl[2]}] -rise_to [get_clocks {seven_seg:seven_seg|cl_cl[2]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {seven_seg:seven_seg|cl_cl[2]}] -fall_to [get_clocks {seven_seg:seven_seg|cl_cl[2]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {seven_seg:seven_seg|cl_cl[2]}] -rise_to [get_clocks {clock}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {seven_seg:seven_seg|cl_cl[2]}] -fall_to [get_clocks {clock}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clock}] -rise_to [get_clocks {seven_seg:seven_seg|cl_cl[2]}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clock}] -fall_to [get_clocks {seven_seg:seven_seg|cl_cl[2]}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clock}] -rise_to [get_clocks {clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clock}] -fall_to [get_clocks {clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clock}] -rise_to [get_clocks {seven_seg:seven_seg|cl_cl[2]}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clock}] -fall_to [get_clocks {seven_seg:seven_seg|cl_cl[2]}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clock}] -rise_to [get_clocks {clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clock}] -fall_to [get_clocks {clock}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_clocks {clock}] -to [get_ports {DS_A DS_B DS_C DS_D DS_E DS_EN1 DS_EN2 DS_EN3 DS_EN4 DS_F DS_G}]



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

