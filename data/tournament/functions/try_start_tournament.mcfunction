scoreboard players set team1_players_in_battle variables 0
scoreboard players set team2_players_in_battle variables 0
scoreboard players set team3_players_in_battle variables 0
scoreboard players set team4_players_in_battle variables 0

scoreboard players set num_teams_in_battle variables 0

# Not in battle, but online
execute as @a[team=team_1] run scoreboard players add team1_players_in_battle variables 1
execute as @a[team=team_2] run scoreboard players add team2_players_in_battle variables 1
execute as @a[team=team_3] run scoreboard players add team3_players_in_battle variables 1
execute as @a[team=team_4] run scoreboard players add team4_players_in_battle variables 1

execute if score team1_players_in_battle variables matches 1.. run scoreboard players add num_teams_in_battle variables 1
execute if score team2_players_in_battle variables matches 1.. run scoreboard players add num_teams_in_battle variables 1
execute if score team3_players_in_battle variables matches 1.. run scoreboard players add num_teams_in_battle variables 1
execute if score team4_players_in_battle variables matches 1.. run scoreboard players add num_teams_in_battle variables 1

execute if score tournament_ready variables matches 1 if entity @a[scores={in_battle=1}] if score num_teams_in_battle variables matches 2.. run function tournament:start_tournament