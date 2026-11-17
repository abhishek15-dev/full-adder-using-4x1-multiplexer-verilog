# compilation
    vlog FA_using_4x1M_tb.v -l comp.log
# elaboration
  vsim -voptargs=+acc FAM_tb  
# addwave
  add wave sim:/FAM_tb/dut/*
# run
  run -all
