
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ECE3710 -dir "C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/ECE3710/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "test_display.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {test_display.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top test_display $srcset
add_files [list {test_display.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
