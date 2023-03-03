data modify entity @s data.char set from entity @s data.input[0]
data remove entity @s data.input[0]
data modify entity @s data.search_chars set from entity @s data.const.charset
scoreboard players set @s arcbf_char_index 0
tag @s remove arcbf_step_op
tag @s add arcbf_step_find_input_char