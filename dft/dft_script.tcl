
########################### Define Top Module ############################
                                                   
set top_module FIR_Fliter

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################

lappend search_path /home/IC/Projects/FIR/std_cells
lappend search_path /home/IC/Projects/FIR/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

#echo "###############################################"
#echo "############# Reading RTL Files  ##############"
#echo "###############################################"

#UART_TX Files

read_file -format verilog FIR_Fliter.v
read_file -format verilog  mux2X1.v
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

source -echo ./cons.tcl

#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -scan 


################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################
set_dft_signal -port [get_ports scan_clk] -type ScanClock -view existing_dft -timing {30 60}
set_dft_signal -port [get_ports scan_rst] -type Reset -view existing_dft -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant -view existing_dft -active_state 1
set_dft_signal -port [get_ports test_mode] -type TestMode -view spac -active_state 0
set_dft_signal -port [get_ports SE] -type ScanEnable -view spec -active_state 1 -usage scan
set_dft_signal -port [get_ports SI] -type ScanDataIN -view spec
set_dft_signal -port [get_ports SO] -type ScanDataOut -view spec

############################# Create Test Protocol #####################
                                           
create_test_protocol

###################### Pre-DFT Design Rule Checking ####################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary 

############################# Insert DFT ###############################

insert_dft


######################## Optimize Logic post DFT #######################

compile -scan -incremental 

###################### Design Rule Checking post DFT ###################

dft_drc -verbose -coverage_estimate


#############################################################################
# Write out Design after initial compile
#############################################################################

#Avoid Writing assign statements in the netlist
change_name -hier -rule verilog
write_file -format verilog -hierarchy -output FIR_Fliter.v
# DDC Gate Level Netlist
write_file -format ddc -hierarchy -output FIR_Fliter.ddc
# SDC(Synopsys Design Constraints) File
write_sdc -nosplit FIR_Fliter.sdc

####################### reporting ##########################################

report_area -hierarchy > area_dft.rpt
report_power -hierarchy > power_dft.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_clock -attributes > clocks_dft.rpt
report_constraint -all_violators > constraints_dft.rpt
dft_drc -coverage_estimate  > dft_drc_post_dft.rpt
report_port > report_name.rpt

################# starting graphical user interface #######################

gui_start

#exit
