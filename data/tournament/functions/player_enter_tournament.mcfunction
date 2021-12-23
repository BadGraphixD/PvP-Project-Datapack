# Mushroom
tp @s[team=team_1] 15355 61 1003055
# Jungle
tp @s[team=team_2] 15405 61 1003105
# Tundra
tp @s[team=team_3] 15355 61 1003055
# Desert
tp @s[team=team_4] 15355 61 1003105

scoreboard players set @s in_battle 1
scoreboard players set @s deaths_in_battle 0
tellraw @a {"text": "", "extra": [{"selector": "@s"}, {"text":" has entered the tournament!"}], "color": "#55FF55"}
title @s title {"text": "You entered the tournament", "color": "#55FF55"}
execute at @s run playsound entity.experience_orb.pickup block @s ~ ~ ~