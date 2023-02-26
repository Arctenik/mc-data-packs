execute if score @s arcbkf_backward matches 0 if score @s arcbkf_dir matches 0 at @s run tp ~ ~ ~-1
execute if score @s arcbkf_backward matches 0 if score @s arcbkf_dir matches 1 at @s run tp ~1 ~ ~
execute if score @s arcbkf_backward matches 0 if score @s arcbkf_dir matches 2 at @s run tp ~ ~ ~1
execute if score @s arcbkf_backward matches 0 if score @s arcbkf_dir matches 3 at @s run tp ~-1 ~ ~
execute if score @s arcbkf_backward matches 1 if score @s arcbkf_dir matches 0 at @s run tp ~ ~ ~1
execute if score @s arcbkf_backward matches 1 if score @s arcbkf_dir matches 1 at @s run tp ~-1 ~ ~
execute if score @s arcbkf_backward matches 1 if score @s arcbkf_dir matches 2 at @s run tp ~ ~ ~-1
execute if score @s arcbkf_backward matches 1 if score @s arcbkf_dir matches 3 at @s run tp ~1 ~ ~