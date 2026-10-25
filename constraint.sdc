current_design alu4

set_input_delay 0.5 -max [get_ports {A[*] B[*] opcode[*]}]
set_input_delay 0.0 -min [get_ports {A[*] B[*] opcode[*]}]

set_output_delay 0.5 -max [get_ports {Y[*] carry}]
set_output_delay 0.0 -min [get_ports {Y[*] carry}]
