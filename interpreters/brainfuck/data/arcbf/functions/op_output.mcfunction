execute store result score @s arcbf_char_index run data get entity @s data.tape_right[0]
execute if score @s arcbf_char_index matches 10 run function arcbf:output_line
execute unless score @s arcbf_char_index matches 10 run function arcbf:start_output_search