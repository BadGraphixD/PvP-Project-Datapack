# Create teams

team add team_1 {"text": "Team 1"}
team add team_2 {"text": "Team 2"}
team add team_3 {"text": "Team 3"}
team add team_4 {"text": "Team 4"}

team modify team_1 color red
team modify team_2 color green
team modify team_3 color blue
team modify team_4 color yellow

team add winner_t
team add tournament_cd_t
team add win_area_cd_t

scoreboard players set Winner: sidebar 3
scoreboard players set Tournament sidebar 2
scoreboard players set Win sidebar 1

team join winner_t Winner:
team join tournament_cd_t Tournament
team join win_area_cd_t Win

# Create scoreboard values

scoreboard objectives add variables dummy

scoreboard players set win_area_cd variables -1
scoreboard players set win_area_close_cd variables -1
scoreboard players set win_area_on variables 0
scoreboard players set tournament_ready variables 0
scoreboard players set tournament_running variables 0
scoreboard players set tournament_id variables 0
function tournament:reset_tournament_cd
function helper:disable_kill_score

scoreboard objectives add dimension_cd dummy
scoreboard objectives add was_in_end dummy
scoreboard objectives add in_battle dummy
scoreboard objectives add deaths_in_battle deathCount
scoreboard objectives add death_tournam_id dummy
scoreboard objectives add can_join_tournam dummy

scoreboard objectives add team1_kills teamkill.red
scoreboard objectives add team2_kills teamkill.green
scoreboard objectives add team3_kills teamkill.blue
scoreboard objectives add team4_kills teamkill.yellow

scoreboard objectives add team_kills dummy
scoreboard players enable team_1 team_kills
scoreboard players enable team_2 team_kills
scoreboard players enable team_3 team_kills
scoreboard players enable team_4 team_kills

scoreboard players enable team1_players_in_battle variables
scoreboard players enable team2_players_in_battle variables
scoreboard players enable team3_players_in_battle variables
scoreboard players enable team4_players_in_battle variables

scoreboard players enable num_teams_in_battle variables

scoreboard players set winner_team variables -1

scoreboard objectives add kill_score dummy

scoreboard objectives add sidebar dummy {"text": "PvP-Project", "color": "#FF55FF"}
scoreboard objectives setdisplay sidebar sidebar

scoreboard objectives add own_team_kills dummy
scoreboard objectives setdisplay list

tellraw @s {"text": "Initialized successfully!", "color": "#55FF55"}