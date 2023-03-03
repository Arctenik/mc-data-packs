data modify entity @s data.chars append string entity @s data.pages[0] 0 1
data modify entity @s data.pages[0] set string entity @s data.pages[0] 1
data modify entity @s data.check_string set from entity @s data.pages[0]
execute unless data entity @s {data:{check_string:""}} run function arcbf:extract_chars_char