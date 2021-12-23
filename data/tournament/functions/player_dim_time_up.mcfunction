execute as @s[nbt={Dimension:"minecraft:the_end"}] run function tournament:player_exit_dim
execute as @s[nbt={Dimension:"minecraft:the_nether"}] run function tournament:player_exit_dim
execute as @s[nbt={Dimension:"minecraft:overworld"}] if score @s was_in_end matches 0 run function tournament:player_exit_dim
scoreboard players set @s was_in_end 0
scoreboard players set @s dimension_cd -1