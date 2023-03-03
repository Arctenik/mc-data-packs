data modify entity @s data.check_char set from entity @s data.search_chars[0]
data remove entity @s data.search_chars[0]
execute store success score @s arcbf_success run data modify entity @s data.check_char set from entity @s data.char
execute if score @s arcbf_success matches 0 run function arcbf:found_input_char
execute if score @s arcbf_success matches 1 unless data entity @s data.search_chars[0] run function arcbf:unknown_input_char
scoreboard players add @s arcbf_char_index 1
tag @s add arcbf_did_step