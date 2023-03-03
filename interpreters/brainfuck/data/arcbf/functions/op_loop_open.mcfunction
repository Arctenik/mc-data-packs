data modify entity @s data.value set from entity @s data.tape_right[0]
execute if data entity @s {data:{value:0}} run function arcbf:begin_skip_forward