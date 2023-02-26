execute at @s if block ~ ~-1 ~ minecraft:red_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "0"
execute at @s if block ~ ~-1 ~ minecraft:orange_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "1"
execute at @s if block ~ ~-1 ~ minecraft:yellow_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "2"
execute at @s if block ~ ~-1 ~ minecraft:lime_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "3"
execute at @s if block ~ ~-1 ~ minecraft:cyan_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "4"
execute at @s if block ~ ~-1 ~ minecraft:light_blue_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "5"
execute at @s if block ~ ~-1 ~ minecraft:blue_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "6"
execute at @s if block ~ ~-1 ~ minecraft:purple_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "7"
execute at @s if block ~ ~-1 ~ minecraft:magenta_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "8"
execute at @s if block ~ ~-1 ~ minecraft:pink_wool run data modify entity @s ArmorItems[0].tag.arcbkf_output append value "9"
execute at @s if block ~ ~-1 ~ minecraft:white_wool run function arcbkf:output_line
execute at @s if block ~ ~-1 ~ minecraft:black_wool run function arcbkf:output_line