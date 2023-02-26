function arcbkf:do_step
scoreboard players remove @s arcbkf_steps_left 1
execute if entity @s[tag=arcbkf_running] if score @s arcbkf_steps_left matches 1.. run function arcbkf:do_run_step