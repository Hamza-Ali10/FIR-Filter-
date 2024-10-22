
########################### Define Top Module ############################
                                                   
set top_module FIR_Fliter

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

set_svf FIR_Fliter.svf
################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/Projects/FIR/std_cells
lappend search_path /home/IC/Projects/FIR/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

read_file -format $file_format FIR_Fliter.v
read_file -format $file_format mux2X1.v

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"


# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions

set CLK_NAME CLK
set CLK_PER 100
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_RISE 0.05
set CLK_FALL 0.05
set CLK_LAT 0


create_clock -name $CLK_NAME -period $CLK_PER -waveform {0 50} [get_port $CLK_NAME]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks $CLK_NAME]
set_clock_transition -rise $CLK_RISE [get_clocks $CLK_NAME]
set_clock_transition -fall $CLK_FALL [get_clocks $CLK_NAME]
set_clock_latency  $CLK_LAT [get_clocks $CLK_NAME]

set_dont_touch_network $CLK_NAME
#set_dont_touch_network rst

set_input_delay 20 -clock $CLK_NAME [get_port Signal_Noise]


set_output_delay 20 -clock $CLK_NAME [get_port Fliter_Signal ]


set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX8M  -pin Y [get_port Signal_Noise]
												 

set_load 0.5 [get_port Fliter_Signal      ]


set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

compile -map_effort high 

#############################################################################
# Write out Design after initial compile
#############################################################################

write_file -format verilog -hierarchy -output System_Top.v
write_file -format ddc -hierarchy -output System_Top.ddc
write_sdc  -nosplit System_Top.sdc
write_sdf           System_Top.sdf

################# reporting #######################

report_area -hierarchy > area.rpt
report_power -hierarchy > power.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt
write_file -format verilog -hierarchy -output FIR_Fliter_Netlist.v

####################################################################################


###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -map_effort high

#############################################################################
set_svf -off

################# starting graphical user interface #######################

gui_start

#exit
