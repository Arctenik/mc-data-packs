scoreboard players set @s arcbkf_step_done 1

execute if score @s arcbkf_backward matches 0 run function arcbkf:reverse_dir

execute at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run scoreboard players set @s arcbkf_temp 0
execute at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run scoreboard players set @s arcbkf_temp 1
execute at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run scoreboard players set @s arcbkf_temp 2
execute at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run scoreboard players set @s arcbkf_temp 3

scoreboard players operation @s arcbkf_temp >< @s arcbkf_dir

execute if score @s arcbkf_temp matches 0 at @s run setblock ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south]
execute if score @s arcbkf_temp matches 1 at @s run setblock ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west]
execute if score @s arcbkf_temp matches 2 at @s run setblock ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north]
execute if score @s arcbkf_temp matches 3 at @s run setblock ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east]

execute if score @s arcbkf_backward matches 1 run function arcbkf:reverse_dir

function arcbkf:update_rotation