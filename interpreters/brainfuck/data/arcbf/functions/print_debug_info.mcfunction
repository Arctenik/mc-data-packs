scoreboard players operation $q arcbf_player_id = @s arcbf_player_id
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"aqua","bold":true,"text":"Debug"}]
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"aqua","text":"Program right (pointer on first item): ","extra":[{"color":"gold","nbt":"data.program_right","entity":"@s"}]}]
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"aqua","text":"Program left (reversed): ","extra":[{"color":"gold","nbt":"data.program_left","entity":"@s"}]}]
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"aqua","text":"Tape right (pointer on first item): ","extra":[{"color":"gold","nbt":"data.tape_right","entity":"@s"}]}]
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"aqua","text":"Tape left (reversed): ","extra":[{"color":"gold","nbt":"data.tape_left","entity":"@s"}]}]
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"aqua","text":"Remaining input: ","extra":[{"color":"gold","nbt":"data.input","entity":"@s"}]}]
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"aqua","text":"Current output line: ","extra":[{"color":"gold","nbt":"data.output_line","entity":"@s"}]}]
tellraw @p[predicate=arcbf:id_match] ["[BF] ",{"color":"aqua","text":"Tags: ","extra":[{"color":"gold","nbt":"Tags","entity":"@s"}]}]