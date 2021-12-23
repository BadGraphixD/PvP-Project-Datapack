scoreboard players set @s dimension_cd 36000
# Teleport player to portal room
tp @s 15370 2 1003080 -90 20
title @s title {"text": "Entered the Portal Room", "color": "#FF55FF"}
title @s subtitle {"text": "You have 30 minutes to gather resources!", "color": "#FFFF55"}
execute at @s run playsound entity.player.levelup block @s ~ ~ ~