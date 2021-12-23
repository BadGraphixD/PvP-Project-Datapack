scoreboard players set win_area_on variables 0
scoreboard players set tournament_running variables 0

execute as @a[scores={in_battle=1}] run function tournament:teleport_to_spawn
scoreboard players set @a in_battle 0

function tournament:reset_arena

title @a title {"text": "Win Area closed", "color": "#FF5555"}
title @a subtitle {"text": "The tournament is now over!", "color": "#FFFF55"}

tellraw @a {"text": "-----------------------", "color": "#AAAAAA"}
tellraw @a {"text": "The tournament is over, no one won!", "color": "#FF5555"}
tellraw @a {"text": "-----------------------", "color": "#AAAAAA"}

playsound entity.wither.ambient block @a