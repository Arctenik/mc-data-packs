tag @s remove arcbf_did_step
execute if entity @s[tag=arcbf_step_op] run function arcbf:step_op
execute if entity @s[tag=!arcbf_did_step,tag=arcbf_step_find_left] run function arcbf:step_find_left
execute if entity @s[tag=!arcbf_did_step,tag=arcbf_step_find_right] run function arcbf:step_find_right
execute if entity @s[tag=!arcbf_did_step,tag=arcbf_step_find_input_char] run function arcbf:step_find_input_char
execute if entity @s[tag=!arcbf_did_step,tag=arcbf_step_find_output_char] run function arcbf:step_find_output_char
scoreboard players remove @s arcbf_steps_left 1
scoreboard players set @s arcbf_done 0
execute unless data entity @s data.program_right[0] if entity @s[tag=arcbf_step_op] run scoreboard players set @s arcbf_done 1
execute if score @s arcbf_done matches 1 run function arcbf:halt
execute if score @s arcbf_steps_left matches 0 if score @s arcbf_done matches 0 run function arcbf:schedule_eval
execute unless score @s arcbf_steps_left matches 0 if score @s arcbf_done matches 0 run function arcbf:do_step