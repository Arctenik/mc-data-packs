execute if score @s arcbkf_backward matches 1 run function arcbkf:move

scoreboard players set @s arcbkf_step_done 0

execute at @s if block ~ ~-1 ~ #arcbkf:concrete run function arcbkf:do_step_nop
execute if score @s arcbkf_step_done matches 0 at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run function arcbkf:do_step_arrow
execute if score @s arcbkf_step_done matches 0 at @s if block ~ ~-1 ~ minecraft:pink_glazed_terracotta run function arcbkf:do_step_mirror
execute if score @s arcbkf_step_done matches 0 at @s if block ~ ~-1 ~ #arcbkf:wool run function arcbkf:do_step_output

execute if score @s arcbkf_backward matches 0 if score @s arcbkf_step_done matches 1 run function arcbkf:move
execute if score @s arcbkf_backward matches 1 if score @s arcbkf_step_done matches 0 run function arcbkf:reverse_backward_move
execute if score @s arcbkf_step_done matches 0 run function arcbkf:halt