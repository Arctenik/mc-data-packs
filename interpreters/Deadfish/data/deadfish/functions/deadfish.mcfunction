# works in Minecraft 1.19.4-pre1 (and later, hopefully)
# this file should be located at data/deadfish/functions/deadfish.mcfunction in a data pack
# (for example, see data pack on GitHub: https://github.com/Arctenik/mc-data-packs/tree/main/interpreters/Deadfish)
# to use the interpreter, run a command like this to initialize the program in the "code" tag of the deadfish storage:
# /data modify storage deadfish code set value "iiisiiisdddddddo"
# and then run this function:
# /function deadfish:deadfish
#####################################

# make sure the scoreboard objective exists
scoreboard objectives add deadfish dummy
# if a program is stored in the "code" tag, start running that program
# move it the the "code_internal" tag and set the accumulator to 0
execute if data storage deadfish code run data modify storage deadfish code_internal set from storage deadfish code
execute if data storage deadfish code run scoreboard players set $accumulator deadfish 0
data remove storage deadfish code
# if running a program, move its first character to the "command" tag
execute if data storage deadfish code_internal unless data storage deadfish {code_internal:""} run data modify storage deadfish command set string storage deadfish code_internal 0 1
execute if data storage deadfish code_internal unless data storage deadfish {code_internal:""} run data modify storage deadfish code_internal set string storage deadfish code_internal 1
# evaluate the command, if it exists and is a valid command
execute if data storage deadfish {command:"i"} run scoreboard players add $accumulator deadfish 1
execute if data storage deadfish {command:"d"} run scoreboard players remove $accumulator deadfish 1
execute if data storage deadfish {command:"s"} run scoreboard players operation $accumulator deadfish *= $accumulator deadfish
execute if data storage deadfish {command:"o"} run tellraw @a {"score":{"name":"$accumulator","objective":"deadfish"}}
data remove storage deadfish command
# zero the accumulator as appropriate
execute if score $accumulator deadfish matches -1 run scoreboard players set $accumulator deadfish 0
execute if score $accumulator deadfish matches 256 run scoreboard players set $accumulator deadfish 0
# recurse if there's a non-empty program being run
execute if data storage deadfish code_internal unless data storage deadfish {code_internal:""} run function deadfish:deadfish