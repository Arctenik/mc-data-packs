tellraw @s ["[BF] ",{"color":"gray","text":"Loading..."}]
function arcbf:create_global_scoreboard
execute unless score @s arcbf_player_id matches 1.. run function arcbf:set_player_id
summon minecraft:armor_stand ~ ~ ~ {Tags:["arcbf","arcbf_new"],Marker:1,Invisible:1}
summon minecraft:marker ~ ~ ~ {Tags:["arcbf","arcbf_new"]}
execute as @e[type=minecraft:armor_stand,tag=arcbf_new,sort=nearest,limit=1] run function arcbf:make_special_values
data modify entity @e[type=minecraft:marker,tag=arcbf_new,sort=nearest,limit=1] data.const set from entity @e[type=minecraft:armor_stand,tag=arcbf_new,sort=nearest,limit=1] HandItems[0].tag.arcbf
kill @e[type=minecraft:armor_stand,tag=arcbf_new,sort=nearest,limit=1]
data modify entity @e[type=minecraft:marker,tag=arcbf_new,sort=nearest,limit=1] data.main_pages set from entity @s SelectedItem.tag.pages
data modify entity @e[type=minecraft:marker,tag=arcbf_new,sort=nearest,limit=1] data.off_pages set from entity @s Inventory[{Slot:-106b}].tag.pages
scoreboard players operation @e[type=minecraft:marker,tag=arcbf_new,sort=nearest,limit=1] arcbf_player_id = @s arcbf_player_id
scoreboard players operation @e[type=minecraft:marker,tag=arcbf_new,sort=nearest,limit=1] arcbf_tick_steps = @s arcbf_tick_steps
execute as @e[type=minecraft:marker,tag=arcbf_new,sort=nearest,limit=1] run function arcbf:marker_run