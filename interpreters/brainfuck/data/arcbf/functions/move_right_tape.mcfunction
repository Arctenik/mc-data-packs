data modify entity @s data.tape_left prepend from entity @s data.tape_right[0]
data remove entity @s data.tape_right[0]
execute unless data entity @s data.tape_right[0] run data modify entity @s data.tape_right append value 0