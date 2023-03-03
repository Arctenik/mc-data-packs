scoreboard players operation $q arcbf_player_id = @s arcbf_player_id
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"nbt":"data.output_line","entity":"@s","interpret":true}]
data modify entity @s data.output_line set value []