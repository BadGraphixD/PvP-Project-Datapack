scoreboard players operation @s can_join_tournam = tournament_id variables
scoreboard players operation @s can_join_tournam -= @s death_tournam_id
execute if score @s can_join_tournam matches 1.. run function tournament:player_enter_tournament