function arcbf:move_left_program
data modify entity @s data.op set from entity @s data.program_right[0]
execute if data entity @s {data:{op:"]"}} run scoreboard players add @s arcbf_brackets 1
execute if data entity @s {data:{op:"["}} run scoreboard players remove @s arcbf_brackets 1
execute if score @s arcbf_brackets matches 0 run function arcbf:found_bracket_left
tag @s add arcbf_did_step