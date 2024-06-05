# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100ticsg324-1L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir V:/Programacion/RepositoriosGit/Modelado2024/ProyectosVivado/Apartado4/Apartado4.cache/wt [current_project]
set_property parent.project_path V:/Programacion/RepositoriosGit/Modelado2024/ProyectosVivado/Apartado4/Apartado4.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo v:/Programacion/RepositoriosGit/Modelado2024/ProyectosVivado/Apartado4/Apartado4.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  V:/Programacion/RepositoriosGit/Modelado2024/PracticaLibre/Apartado1/display_controller.vhd
  V:/Programacion/RepositoriosGit/Modelado2024/PracticaLibre/Apartado2/oled_controller.vhd
  V:/Programacion/RepositoriosGit/Modelado2024/PracticaLibre/Apartado3/receiver.vhd
  V:/Programacion/RepositoriosGit/Modelado2024/PracticaLibre/Apartado2/spi_controller.vhd
  V:/Programacion/RepositoriosGit/Modelado2024/PracticaLibre/Apartado4/top_system.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc V:/Programacion/RepositoriosGit/Modelado2024/PracticaLibre/Apartado4/top_system.xdc
set_property used_in_implementation false [get_files V:/Programacion/RepositoriosGit/Modelado2024/PracticaLibre/Apartado4/top_system.xdc]


synth_design -top top_system -part xc7a100ticsg324-1L


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_system.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_system_utilization_synth.rpt -pb top_system_utilization_synth.pb"