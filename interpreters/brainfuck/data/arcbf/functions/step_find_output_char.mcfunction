execute if score @s arcbf_char_index matches 0 run function arcbf:found_output_char
scoreboard players remove @s arcbf_char_index 1
data remove entity @s data.search_chars[0]
tag @s add arcbf_did_step