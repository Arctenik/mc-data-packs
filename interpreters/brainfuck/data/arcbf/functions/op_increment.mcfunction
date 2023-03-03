execute store result score $n arcbf_math run data get entity @s data.tape_right[0]
scoreboard players add $n arcbf_math 1
execute if score $n arcbf_math matches 256 run scoreboard players set $n arcbf_math 0
execute store result entity @s data.tape_right[0] int 1 run scoreboard players get $n arcbf_math