function tournament:teleport_to_spawn
scoreboard players set @s in_battle 0
scoreboard players set @s deaths_in_battle 0
execute if score tournament_running variables matches 1 run scoreboard players operation @s death_tournam_id = tournament_id variables

tellraw @a {"text": "", "extra": [{"selector": "@s"}, {"text":" left the tournament!"}], "color": "#FF5555"}
title @s title {"text": "You left the tournament", "color": "#FF5555"}
title @s subtitle {"text": "You cannot join again until the next one!", "color": "#FFFF55"}

execute at @s run playsound entity.wither.death block @s ~ ~ ~ .5