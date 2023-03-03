data modify entity @s data.op set from entity @s data.program_right[0]
function arcbf:move_right_program
execute if data entity @s {data:{op:"+"}} run function arcbf:op_increment
execute if data entity @s {data:{op:"-"}} run function arcbf:op_decrement
execute if data entity @s {data:{op:">"}} run function arcbf:move_right_tape
execute if data entity @s {data:{op:"<"}} run function arcbf:move_left_tape
execute if data entity @s {data:{op:"["}} run function arcbf:op_loop_open
execute if data entity @s {data:{op:"]"}} run function arcbf:op_loop_close
execute if data entity @s {data:{op:","}} if data entity @s data.input[0] run function arcbf:op_input
execute if data entity @s {data:{op:"."}} run function arcbf:op_output
execute if data entity @s {data:{op:"#"}} run function arcbf:print_debug_info
tag @s add arcbf_did_step