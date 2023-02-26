scoreboard players set @s arcbkf_step_done 1

execute at @s if block ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=north] run scoreboard players set @s arcbkf_temp 0
execute at @s if block ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=south] run scoreboard players set @s arcbkf_temp 0
execute at @s if block ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=east] run scoreboard players set @s arcbkf_temp 1
execute at @s if block ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=west] run scoreboard players set @s arcbkf_temp 1

execute if score @s arcbkf_temp matches 0 at @s run setblock ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=east]
execute if score @s arcbkf_temp matches 1 at @s run setblock ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=north]

execute if score @s arcbkf_backward matches 0 at @s if block ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=north] run scoreboard players set @s arcbkf_temp 7
execute if score @s arcbkf_backward matches 0 at @s if block ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=east] run scoreboard players set @s arcbkf_temp 5
execute if score @s arcbkf_backward matches 1 at @s if block ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=north] run scoreboard players set @s arcbkf_temp 5
execute if score @s arcbkf_backward matches 1 at @s if block ~ ~-1 ~ minecraft:pink_glazed_terracotta[facing=east] run scoreboard players set @s arcbkf_temp 7

scoreboard players operation @s arcbkf_temp -= @s arcbkf_dir
scoreboard players operation @s arcbkf_dir = @s arcbkf_temp
scoreboard players set @s arcbkf_temp 4
scoreboard players operation @s arcbkf_dir %= @s arcbkf_temp

function arcbkf:update_rotation