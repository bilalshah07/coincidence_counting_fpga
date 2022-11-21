-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../counting_unit.gen/sources_1/ip/clk_400_1/clk_400_clk_wiz.v" \
  "../../../../counting_unit.gen/sources_1/ip/clk_400_1/clk_400.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

