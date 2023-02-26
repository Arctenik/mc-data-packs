execute as @p[scores={arcbkf_delay=1..}] run function arcbkf:player_set_delay
execute as @p[scores={arcbkf_tick_steps=1..}] run function arcbkf:player_set_tick_steps
execute as @e[tag=arcbkf_running] run function arcbkf:tick_pointer