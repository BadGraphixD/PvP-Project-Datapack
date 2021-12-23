scoreboard players set tournament_ready variables 0
scoreboard players set tournament_running variables 1
function tournament:reset_win_area_cd

tellraw @a {"text": "-----------------------", "color": "#AAAAAA"}
tellraw @a {"text": "Tournament is starting!", "color": "#FF5555"}
tellraw @a {"text": "-----------------------", "color": "#AAAAAA"}

execute at @s run playsound entity.ender_dragon.growl block @s ~ ~ ~