tag @s remove arcbf_new
execute if score @s arcbf_tick_steps matches 0 run scoreboard players set @s arcbf_tick_steps 600
execute store result score $n arcbf_math run gamerule maxCommandChainLength
scoreboard players operation $n arcbf_math /= $commands_per_step arcbf_math
execute if score @s arcbf_tick_steps > $n arcbf_math run scoreboard players operation @s arcbf_tick_steps = $n arcbf_math
execute if score @s arcbf_tick_steps matches -1 run scoreboard players operation @s arcbf_tick_steps = $n arcbf_math
data modify entity @s data.tape_left set value []
data modify entity @s data.tape_right set value [0]
data modify entity @s data.output_line set value []
tag @s add arcbf_tick_extract_program
schedule function arcbf:tick_extract_program 1t