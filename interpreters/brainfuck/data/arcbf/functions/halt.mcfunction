function arcbf:output_line
scoreboard players operation $q arcbf_player_id = @s arcbf_player_id
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"gray","text":"Done"}]
kill @s