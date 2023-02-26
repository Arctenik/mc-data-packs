scoreboard players operation @s arcbkf_tick %= @s arcbkf_delay
scoreboard players operation @s arcbkf_steps_left = @s arcbkf_tick_steps
execute if score @s arcbkf_tick matches 0 run function arcbkf:do_run_step
scoreboard players add @s arcbkf_tick 1