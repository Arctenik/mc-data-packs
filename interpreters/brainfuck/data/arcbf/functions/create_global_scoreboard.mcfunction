scoreboard objectives add arcbf_success dummy
scoreboard objectives add arcbf_tick_steps dummy
scoreboard objectives add arcbf_steps_left dummy
scoreboard objectives add arcbf_math dummy
scoreboard objectives add arcbf_brackets dummy
scoreboard objectives add arcbf_char_index dummy
scoreboard objectives add arcbf_done dummy
scoreboard objectives add arcbf_player_id dummy
scoreboard players set $commands_per_step arcbf_math 45
execute unless score $next arcbf_player_id matches 1.. run scoreboard players set $next arcbf_player_id 1