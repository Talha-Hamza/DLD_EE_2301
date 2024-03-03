## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
#set_property PACKAGE_PIN W5 [get_ports clk]							
	#set_property IOSTANDARD LVCMOS33 [get_ports clk]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches
set_property PACKAGE_PIN R2 [get_ports {C2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {C2}]
set_property PACKAGE_PIN T1 [get_ports {C1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {C1}]
set_property PACKAGE_PIN U1 [get_ports {C0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {C0}]

## LEDs
set_property PACKAGE_PIN L1 [get_ports {led[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property PACKAGE_PIN P1 [get_ports {led[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN N3 [get_ports {led[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
	
set_property PACKAGE_PIN U3 [get_ports {G1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {G1}]
	
set_property PACKAGE_PIN W3 [get_ports {Y1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Y1}]
	
set_property PACKAGE_PIN V3 [get_ports {R1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R1}]
	
	
set_property PACKAGE_PIN V13 [get_ports {G2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {G2}]
	
set_property PACKAGE_PIN V14 [get_ports {Y2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Y2}]
	
set_property PACKAGE_PIN U14 [get_ports {R2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {R2}]
