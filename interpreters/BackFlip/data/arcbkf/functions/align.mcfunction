execute at @s align xyz run tp ~0.5 ~ ~0.5

execute store result score @s arcbkf_dir run data get entity @s Rotation[0]
scoreboard players add @s arcbkf_dir 225
scoreboard players set @s arcbkf_temp 90
scoreboard players operation @s arcbkf_dir /= @s arcbkf_temp
scoreboard players set @s arcbkf_temp 4
scoreboard players operation @s arcbkf_dir %= @s arcbkf_temp
function arcbkf:update_rotation