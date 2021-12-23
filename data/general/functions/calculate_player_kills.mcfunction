execute as @a[team=team_1] run scoreboard players operation team_1 team_kills += @s team2_kills
execute as @a[team=team_1] run scoreboard players operation team_1 team_kills += @s team3_kills
execute as @a[team=team_1] run scoreboard players operation team_1 team_kills += @s team4_kills

execute as @a[team=team_2] run scoreboard players operation team_2 team_kills += @s team1_kills
execute as @a[team=team_2] run scoreboard players operation team_2 team_kills += @s team3_kills
execute as @a[team=team_2] run scoreboard players operation team_2 team_kills += @s team4_kills

execute as @a[team=team_3] run scoreboard players operation team_3 team_kills += @s team1_kills
execute as @a[team=team_3] run scoreboard players operation team_3 team_kills += @s team2_kills
execute as @a[team=team_3] run scoreboard players operation team_3 team_kills += @s team4_kills

execute as @a[team=team_4] run scoreboard players operation team_4 team_kills += @s team1_kills
execute as @a[team=team_4] run scoreboard players operation team_4 team_kills += @s team2_kills
execute as @a[team=team_4] run scoreboard players operation team_4 team_kills += @s team3_kills

scoreboard players set @a team1_kills 0
scoreboard players set @a team2_kills 0
scoreboard players set @a team3_kills 0
scoreboard players set @a team4_kills 0

scoreboard players operation @a[team=team_1] own_team_kills = team_1 team_kills
scoreboard players operation @a[team=team_2] own_team_kills = team_2 team_kills
scoreboard players operation @a[team=team_3] own_team_kills = team_3 team_kills
scoreboard players operation @a[team=team_4] own_team_kills = team_4 team_kills