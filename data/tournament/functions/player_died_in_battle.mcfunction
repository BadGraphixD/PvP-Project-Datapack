scoreboard players set @s in_battle 0
scoreboard players set @s deaths_in_battle 0
scoreboard players operation @s death_tournam_id = tournament_id variables
execute at @s run playsound entity.blaze.death player @a ~ ~ ~
execute at @s run particle firework ~ ~ ~ 0 0 0 1 500