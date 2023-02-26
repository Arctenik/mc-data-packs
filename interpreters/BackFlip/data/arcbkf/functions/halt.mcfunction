execute if score @s arcbkf_backward matches 0 run function arcbkf:output_line
execute if score @s arcbkf_backward matches 0 run tellraw @a "[BackFlip] Done"
execute if score @s arcbkf_backward matches 1 run tellraw @a "[BackFlip] Reset"
execute if score @s arcbkf_backward matches 1 run data modify entity @s ArmorItems[0].tag.arcbkf_output set value []
tag @s remove arcbkf_running