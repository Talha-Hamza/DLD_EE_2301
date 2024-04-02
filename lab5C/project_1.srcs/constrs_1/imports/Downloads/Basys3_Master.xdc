
## Clock signal
set_property PACKAGE_PIN W5 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK]

 
## Switches
set_property PACKAGE_PIN V17 [get_ports {InputNumber[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {InputNumber[0]}]
set_property PACKAGE_PIN V16 [get_ports {InputNumber[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {InputNumber[1]}]
set_property PACKAGE_PIN W16 [get_ports {InputNumber[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {InputNumber[2]}]
set_property PACKAGE_PIN W17 [get_ports {InputNumber[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {InputNumber[3]}]
set_property PACKAGE_PIN W15 [get_ports {InputNumber[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {InputNumber[4]}]
set_property PACKAGE_PIN V15 [get_ports {InputNumber[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {InputNumber[5]}]
set_property PACKAGE_PIN W14 [get_ports {InputNumber[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {InputNumber[6]}]
set_property PACKAGE_PIN W13 [get_ports {InputNumber[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {InputNumber[7]}]
set_property PACKAGE_PIN V2 [get_ports {N[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {N[0]}]
set_property PACKAGE_PIN T3 [get_ports {N[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {N[1]}]
set_property PACKAGE_PIN T2 [get_ports {N[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {N[2]}]
set_property PACKAGE_PIN R3 [get_ports {RightNotLeft}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {RightNotLeft}]
set_property PACKAGE_PIN R2 [get_ports {RESET}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {RESET}]
 

## LEDs
set_property PACKAGE_PIN U16 [get_ports {OutputNumber[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OutputNumber[0]}]
set_property PACKAGE_PIN E19 [get_ports {OutputNumber[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OutputNumber[1]}]
set_property PACKAGE_PIN U19 [get_ports {OutputNumber[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OutputNumber[2]}]
set_property PACKAGE_PIN V19 [get_ports {OutputNumber[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OutputNumber[3]}]
set_property PACKAGE_PIN W18 [get_ports {OutputNumber[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OutputNumber[4]}]
set_property PACKAGE_PIN U15 [get_ports {OutputNumber[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OutputNumber[5]}]
set_property PACKAGE_PIN U14 [get_ports {OutputNumber[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OutputNumber[6]}]
set_property PACKAGE_PIN V14 [get_ports {OutputNumber[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {OutputNumber[7]}]

	
	
