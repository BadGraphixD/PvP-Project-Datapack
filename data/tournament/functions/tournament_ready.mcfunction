scoreboard players set tournament_ready variables 1
scoreboard players add tournament_id variables 1
scoreboard players set win_area_on variables 0
function tournament:reset_tournament_cd
tellraw @a {"text": "--------------------", "color": "#AAAAAA"}
tellraw @a {"text": "Tournament is ready!", "color": "#55FFFF"}
tellraw @a {"text": "--------------------", "color": "#AAAAAA"}
execute at @s run playsound entity.wither.spawn block @a ~ ~ ~