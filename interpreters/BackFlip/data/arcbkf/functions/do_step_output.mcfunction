scoreboard players set @s arcbkf_step_done 1

execute if score @s arcbkf_backward matches 0 run function arcbkf:do_forward_output

function arcbkf:reverse_dir

function arcbkf:update_rotation