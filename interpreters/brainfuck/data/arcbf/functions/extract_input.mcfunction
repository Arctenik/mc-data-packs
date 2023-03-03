tag @s remove arcbf_tick_extract_input
data modify entity @s data.pages set from entity @s data.main_pages
data remove entity @s data.main_pages
execute if data entity @s data.pages run function arcbf:extract_chars
data modify entity @s data.input set value []
data modify entity @s data.input set from entity @s data.chars
data remove entity @s data.chars
scoreboard players operation $q arcbf_player_id = @s arcbf_player_id
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"gray","text":"Running..."}]
tag @s add arcbf_step_op
tag @s add arcbf_tick_eval
schedule function arcbf:tick_eval 1t