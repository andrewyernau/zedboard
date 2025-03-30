
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name lab3 -dir "E:/Universidad/Telematica/4o/SOCS-FPGAS/lab3/planAhead_run_4" -part xc7z020clg484-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/Universidad/Telematica/4o/SOCS-FPGAS/lab3/lab3a.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/Universidad/Telematica/4o/SOCS-FPGAS/lab3} }
set_property target_constrs_file "lab0.ucf" [current_fileset -constrset]
add_files [list {lab0.ucf}] -fileset [get_property constrset [current_run]]
link_design
