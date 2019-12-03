set projDir "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/planAhead"
set projName "Electronic Game CAA 231119"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/mojo_top_0.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/reset_conditioner_1.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/logic_2.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/regFile_3.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/binary_to_bcd_4.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/alu_5.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/delayCount_6.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/easyCount_7.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/medCount_8.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/hardCount_9.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/extremeCount_10.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/bossCount_11.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/score_12.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/multi_seven_seg_13.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/adder_14.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/compare_15.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/boolean_16.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/shifter_17.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/randomSequence_18.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/randomSequence_18.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/randomSequence_18.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/randomSequence_18.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/randomSequence_18.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/counter_23.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/seven_seg_24.v" "C:/Users/jieha/OneDrive/Documents/mojo/Electronic Game CAA 231119/work/verilog/decoder_25.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/jieha/OneDrive/Documents/mojo/Electronic\ Game\ CAA\ 231119/constraint/custom.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
