scoreboard players operation $q arcbf_player_id = @s arcbf_player_id
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"red","text":"Error: Not holding a book"}]
kill @s