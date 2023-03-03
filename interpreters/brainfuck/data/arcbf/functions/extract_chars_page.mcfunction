data modify entity @s data.check_string set from entity @s data.pages[0]
execute unless data entity @s {data:{check_string:""}} run function arcbf:extract_chars_char
data remove entity @s data.pages[0]
execute if data entity @s data.pages[0] run function arcbf:extract_chars_page