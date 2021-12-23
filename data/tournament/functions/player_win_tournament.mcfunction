# Teleport to hall of fame
tp @s 15380 51.25 1003080
scoreboard players set win_area_on variables 0
scoreboard players set tournament_running variables 0
scoreboard players set win_area_close_cd variables -1

scoreboard players set @s in_battle 0

function tournament:reset_arena

title @a title {"text": "", "extra": [{"selector": "@s"}, {"text":" won the tournament!"}], "color": "#55FF55"}
title @a subtitle {"text": "He can now choose whom to take to the dimension room!", "color": "#FFFF55"}

tellraw @a {"text": "-----------------------", "color": "#AAAAAA"}
tellraw @a {"text": "", "extra": [{"selector": "@s"}, {"text":" won the tournament!"}], "color": "#55FF55"}
tellraw @a {"text": "-----------------------", "color": "#AAAAAA"}

execute at @s run playsound ui.toast.challenge_complete block @s ~ ~ ~