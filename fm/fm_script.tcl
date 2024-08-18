
###################################################################
########################### Variables #############################
###################################################################

set SSLIB "/home/IC/Projects/FIR/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/Projects/FIR/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/Projects/FIR/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/IC/Projects/FIR/syn/FIR_Fliter.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_verilog -container Ref  "/home/IC/Projects/FIR/rtl/FIR_Fliter.v"
read_verilog -container Ref  "/home/IC/Projects/FIR/rtl/mux2X1.v"

# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_reference_design FIR_Fliter
set_top FIR_Fliter

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -netlist -container Imp "/home/IC/Projects/FIR/syn/FIR_Fliter_Netlist.v"

# Read Implementation technology libraries
read_db -container Imp "/home/IC/Projects/FIR/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

# set the top Implementation Design
set_implementation_design FIR_Fliter
set_top FIR_Fliter

###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


start_gui
#exit
