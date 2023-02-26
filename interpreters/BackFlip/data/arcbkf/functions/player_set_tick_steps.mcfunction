execute at @s run effect give @e[tag=arcbkf_pointer,limit=1,sort=nearest,distance=..90] glowing 1 0 true
execute at @s run scoreboard players operation @e[tag=arcbkf_pointer,limit=1,sort=nearest,distance=..90] arcbkf_tick_steps = @s arcbkf_tick_steps
scoreboard players reset @s arcbkf_tick_steps