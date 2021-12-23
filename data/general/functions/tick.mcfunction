scoreboard players remove tournament_cd variables 1
scoreboard players remove win_area_cd variables 1
scoreboard players remove win_area_close_cd variables 1
execute if score tournament_cd variables matches 0 run function tournament:tournament_ready
execute if score win_area_cd variables matches 0 run function tournament:activate_win_area
execute if score win_area_on variables matches 1 run function tournament:tick_win_area
execute if score win_area_close_cd variables matches 0 run function tournament:close_win_area

function tournament:try_start_tournament

# Bounds for tournament enter station
execute if score tournament_ready variables matches 1 as @a[x=15344.5,y=68,z=1003044.5,dx=1,dy=1,dz=1] run function tournament:player_try_enter_tournament
execute if score tournament_ready variables matches 1 as @a[x=15344.5,y=68,z=1003114.5,dx=1,dy=1,dz=1] run function tournament:player_try_enter_tournament
execute if score tournament_ready variables matches 1 as @a[x=15414.5,y=68,z=1003114.5,dx=1,dy=1,dz=1] run function tournament:player_try_enter_tournament
execute if score tournament_ready variables matches 1 as @a[x=15414.5,y=68,z=1003044.5,dx=1,dy=1,dz=1] run function tournament:player_try_enter_tournament

execute if score tournament_running variables matches 1 as @a[x=15344.5,y=68,z=1003044.5,dx=1,dy=1,dz=1] run function tournament:player_try_enter_tournament
execute if score tournament_running variables matches 1 as @a[x=15344.5,y=68,z=1003114.5,dx=1,dy=1,dz=1] run function tournament:player_try_enter_tournament
execute if score tournament_running variables matches 1 as @a[x=15414.5,y=68,z=1003114.5,dx=1,dy=1,dz=1] run function tournament:player_try_enter_tournament
execute if score tournament_running variables matches 1 as @a[x=15414.5,y=68,z=1003044.5,dx=1,dy=1,dz=1] run function tournament:player_try_enter_tournament

execute if score tournament_ready variables matches 1 run particle dust_color_transition 1 1 0 1 1 .5 0 15345 68.1 1003045 .75 .25 .75 1 2
execute if score tournament_ready variables matches 1 run particle lava 15345 68.25 1003045 .25 0 .25 0 1
execute if score tournament_ready variables matches 1 run particle dust_color_transition 1 1 0 1 1 .5 0 15345 68.1 1003115 .75 .25 .75 1 2
execute if score tournament_ready variables matches 1 run particle lava 15345 68.25 1003115 .25 0 .25 0 1
execute if score tournament_ready variables matches 1 run particle dust_color_transition 1 1 0 1 1 .5 0 15415 68.1 1003115 .75 .25 .75 1 2
execute if score tournament_ready variables matches 1 run particle lava 15415 68.25 1003115 .25 0 .25 0 1
execute if score tournament_ready variables matches 1 run particle dust_color_transition 1 1 0 1 1 .5 0 15415 68.1 1003045 .75 .25 .75 1 2
execute if score tournament_ready variables matches 1 run particle lava 15415 68.25 1003045 .25 0 .25 0 1

execute if score tournament_running variables matches 1 run particle dust_color_transition 1 1 0 1 1 .5 0 15345 68.1 1003045 .75 .25 .75 1 2
execute if score tournament_running variables matches 1 run particle lava 15345 68.25 1003045 .25 0 .25 0 1
execute if score tournament_running variables matches 1 run particle dust_color_transition 1 1 0 1 1 .5 0 15345 68.1 1003115 .75 .25 .75 1 2
execute if score tournament_running variables matches 1 run particle lava 15345 68.25 1003115 .25 0 .25 0 1
execute if score tournament_running variables matches 1 run particle dust_color_transition 1 1 0 1 1 .5 0 15415 68.1 1003115 .75 .25 .75 1 2
execute if score tournament_running variables matches 1 run particle lava 15415 68.25 1003115 .25 0 .25 0 1
execute if score tournament_running variables matches 1 run particle dust_color_transition 1 1 0 1 1 .5 0 15415 68.1 1003045 .75 .25 .75 1 2
execute if score tournament_running variables matches 1 run particle lava 15415 68.25 1003045 .25 0 .25 0 1

# Bounds for tournament exit station
execute as @a[x=15349.5,y=61,z=1003049.5,dx=1,dy=1,dz=1] run function tournament:player_exit_tournament
particle dust_color_transition .5 0 0 1 1 0 0 15350 61.1 1003050 .75 .25 .75 1 2
execute as @a[x=15349.5,y=61,z=1003109.5,dx=1,dy=1,dz=1] run function tournament:player_exit_tournament
particle dust_color_transition .5 0 0 1 1 0 0 15350 61.1 1003110 .75 .25 .75 1 2
execute as @a[x=15409.5,y=61,z=1003109.5,dx=1,dy=1,dz=1] run function tournament:player_exit_tournament
particle dust_color_transition .5 0 0 1 1 0 0 15410 61.1 1003110 .75 .25 .75 1 2
execute as @a[x=15409.5,y=61,z=1003049.5,dx=1,dy=1,dz=1] run function tournament:player_exit_tournament
particle dust_color_transition .5 0 0 1 1 0 0 15410 61.1 1003050 .75 .25 .75 1 2

scoreboard players remove @a[scores={dimension_cd=1..}] dimension_cd 1
execute as @a[scores={dimension_cd=0}] run function tournament:player_dim_time_up
execute as @a[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s was_in_end 1

execute as @a[scores={in_battle=1, deaths_in_battle=1..}] run function tournament:player_died_in_battle

execute if score kill_score_enabled variables matches 1 run function general:calculate_player_kills
function general:tick_sidebar

# Determine winner team
execute if score winner_team variables matches -1 if score team_1 team_kills matches 300.. run scoreboard players set winner_team variables 1
execute if score winner_team variables matches -1 if score team_2 team_kills matches 300.. run scoreboard players set winner_team variables 2
execute if score winner_team variables matches -1 if score team_3 team_kills matches 300.. run scoreboard players set winner_team variables 3
execute if score winner_team variables matches -1 if score team_4 team_kills matches 300.. run scoreboard players set winner_team variables 4

execute if score tournament_running variables matches 0 if score tournament_ready variables matches 0 as @a[scores={in_battle=1}] run scoreboard players set @s in_battle 0

#execute as @a at @s if block ~ ~-1 ~ stripped_jungle_wood run give @a netherite_sword{Enchantments:[{id:"minecraft:sharpness",lvl:255},{id:"minecraft:vanishing_curse"},{id:"minecraft:unbreaking",lvl:255},{id:"minecraft:mending"},{id:"minecraft:sweeping",lvl:255},{id:"minecraft:knockback",lvl:5}]}