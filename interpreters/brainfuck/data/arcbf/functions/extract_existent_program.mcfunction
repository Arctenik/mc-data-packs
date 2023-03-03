function arcbf:extract_chars
data modify entity @s data.program_right set from entity @s data.chars
data modify entity @s data.program_left set value []
data remove entity @s data.chars
tag @s add arcbf_tick_extract_input
schedule function arcbf:tick_extract_input 1t