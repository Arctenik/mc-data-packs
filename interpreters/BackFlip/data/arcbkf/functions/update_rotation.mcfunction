scoreboard players set @s arcbkf_temp 90
scoreboard players operation @s arcbkf_temp *= @s arcbkf_dir
scoreboard players remove @s arcbkf_temp 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s arcbkf_temp