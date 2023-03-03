scoreboard players operation $q arcbf_player_id = @s arcbf_player_id
execute store success score @s arcbf_success run kill @e[tag=arcbf,sort=nearest,limit=1,predicate=arcbf:id_match]
execute if score @s arcbf_success matches 1 run tellraw @s ["[BF] ",{"color":"gray","text":"Killed nearest interpreter"}]
execute if score @s arcbf_success matches 0 run tellraw @s ["[BF] ",{"color":"gray","text":"No interpreter found"}]