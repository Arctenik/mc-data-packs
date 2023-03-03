tag @s remove arcbf_tick_extract_program
execute if data entity @s data.main_pages unless data entity @s data.off_pages run function arcbf:get_program_from_main
execute if data entity @s data.off_pages run function arcbf:get_program_from_off
execute unless data entity @s data.pages run function arcbf:error_no_program
execute if data entity @s data.pages run function arcbf:extract_existent_program