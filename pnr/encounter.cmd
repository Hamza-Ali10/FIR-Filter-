#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Fri Aug  2 23:38:01 2024                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell FIR_Fliter
setUIVar rda_Input ui_netlist /home/ahesham/Projects/FIR/dft/FIR_NETlist.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Projects/FIR/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Projects/FIR/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Projects/FIR/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Projects/FIR/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Projects/FIR/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Projects/FIR/pnr/import/FIR.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/FIR/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Projects/FIR/dft/FIR_Fliter_func.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../dft/FIR_Fliter_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../dft/FIR_Fliter_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../dft/FIR_Fliter_capture.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode scan_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view} -hold {hold1_analysis_view hold2_analysis_view hold3_analysis_view}
floorPlan -d 120.13 120.13 3.0 3.0 3.0 3.0
fit
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -follow io -stacked_via_bottom_layer METAL1 -layer_left METAL6
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 40 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
selectWire 4.7800 0.2050 5.7800 119.9250 6 VDD
deleteSelectedFromFPlan
selectWire 3.2800 1.7050 4.2800 118.4250 6 VSS
deleteSelectedFromFPlan
editSplit
verifyGeometry -noMinArea
verifyGeometry -noMinArea
zoomIn
zoomIn
zoomIn
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
fit
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { 1 7 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
saveFPlan /home/ahesham/Projects/FIR/pnr/FIR_Fliter.fp
setDrawView place
setDrawView fplan
setDrawView place
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix FIR_Fliter_preCTS -outDir timingReports
optDesign -preCTS
saveDesign /home/ahesham/Projects/FIR/pnr/FIR_Fliter.enc
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
getIoFlowFlag
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix FIR_Fliter_postCTS -outDir timingReports
setNanoRouteMode -quiet -routeTopRoutingLayer 6
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeSiEffort max
routeDesign -globalDetail -viaOpt -wireOpt
zoomIn
zoomIn
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 0 1
panPage -1 0
windowAddSelect -6.140 23.756 1.760 18.678
deselectAll
zoomIn
panPage 0 -1
panPage 1 0
zoomIn
panPage 0 1
zoomIn
zoomIn
panPage -1 0
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
deselectAll
panPage 0 -1
panPage 0 1
windowSelect -0.835 21.027 -0.226 20.399
windowSelect -0.720 20.941 -0.928 21.191
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
deselectAll
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
deselectAll
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
violationBrowser -all -no_display_false
deselectAll
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
deselectAll
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
windowSelect 0.208 20.297 0.208 20.261
windowSelect 0.213 20.062 0.127 20.069
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
deselectAll
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
deselectAll
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
deselectAll
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
deselectAll
selectMarker -0.2950 19.7950 0.7050 20.7950 3 1 2
clearDrc
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
fit
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 1
verifyGeometry -noMinArea
windowSelect -11.186 32.638 8.406 10.159
deselectAll
zoomIn
zoomIn
zoomIn
panPage -1 0
panPage -1 0
panPage -1 0
zoomIn
zoomIn
zoomIn
panPage -1 0
panPage 1 0
panPage -1 0
panPage 0 1
panPage 0 -1
panPage 0 1
panPage 0 -1
panPage 1 0
panPage -1 0
zoomOut
zoomOut
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
windowSelect 0.442 20.305 0.442 20.176
windowSelect -0.177 20.318 -0.164 20.163
windowSelect -0.860 20.782 0.120 20.047
windowSelect -0.074 20.267 -0.100 19.995
windowSelect -0.126 20.279 -0.138 19.712
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
fit
clearDrc
checkFiller -highlight true
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix FIR_Fliter_postRoute -outDir timingReports
saveNetlist export/FIR_Fliter.v
saveNetlist export/FIR_Fliter_pg.v -includePowerGround
rcOut -spf export/FIR_Fliter.spf
delayCal -sdf export/FIR_Fliter.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/FIR_Fliter.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
