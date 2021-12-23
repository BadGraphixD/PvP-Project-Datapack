# Tournament
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 216001..288000 run team modify tournament_cd_t prefix "4h until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 144001..216000 run team modify tournament_cd_t prefix "3h until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 72001..144000 run team modify tournament_cd_t prefix "2h until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 36001..72000 run team modify tournament_cd_t prefix "1h until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 24001..36000 run team modify tournament_cd_t prefix "30min until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 12001..24000 run team modify tournament_cd_t prefix "20min until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 6001..12000 run team modify tournament_cd_t prefix "10min until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 1201..6000 run team modify tournament_cd_t prefix "5min until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 601..1200 run team modify tournament_cd_t prefix "1min until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 401..600 run team modify tournament_cd_t prefix "30s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 201..400 run team modify tournament_cd_t prefix "20s until next "

execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 181..200 run team modify tournament_cd_t prefix "10s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 161..180 run team modify tournament_cd_t prefix "9s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 141..160 run team modify tournament_cd_t prefix "8s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 121..140 run team modify tournament_cd_t prefix "7s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 101..120 run team modify tournament_cd_t prefix "6s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 81..100 run team modify tournament_cd_t prefix "5s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 61..80 run team modify tournament_cd_t prefix "4s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 41..60 run team modify tournament_cd_t prefix "3s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 21..40 run team modify tournament_cd_t prefix "2s until next "
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 1..20 run team modify tournament_cd_t prefix "1s until next "

execute if score tournament_ready variables matches 1 run team modify tournament_cd_t prefix ""
execute if score tournament_running variables matches 1 run team modify tournament_cd_t prefix ""

execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 run team modify tournament_cd_t suffix ""
execute if score tournament_ready variables matches 1 run team modify tournament_cd_t suffix " is ready!"
execute if score tournament_running variables matches 1 run team modify tournament_cd_t suffix " is running!"

execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 12001.. run team modify tournament_cd_t color green
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 1201..12000 run team modify tournament_cd_t color yellow
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 201..1200 run team modify tournament_cd_t color gold
execute if score tournament_ready variables matches 0 if score tournament_running variables matches 0 if score tournament_cd variables matches 1..200 run team modify tournament_cd_t color red
execute if score tournament_ready variables matches 1 run team modify tournament_cd_t color aqua
execute if score tournament_running variables matches 1 run team modify tournament_cd_t color dark_purple

# Win area
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 10801..12000 run team modify win_area_cd_t suffix " Area opens in 10min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 9601..10800 run team modify win_area_cd_t suffix " Area opens in 9min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 8401..9600 run team modify win_area_cd_t suffix " Area opens in 8min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 7201..8400 run team modify win_area_cd_t suffix " Area opens in 7min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 6001..7200 run team modify win_area_cd_t suffix " Area opens in 6min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 4801..6000 run team modify win_area_cd_t suffix " Area opens in 5min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 3601..4800 run team modify win_area_cd_t suffix " Area opens in 4min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 2401..3600 run team modify win_area_cd_t suffix " Area opens in 3min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 1201..2400 run team modify win_area_cd_t suffix " Area opens in 2min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 601..1200 run team modify win_area_cd_t suffix " Area opens in 1min"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 401..600 run team modify win_area_cd_t suffix " Area opens in 30s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 201..400 run team modify win_area_cd_t suffix " Area opens in 20s"

execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 181..200 run team modify win_area_cd_t suffix " Area opens in 10s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 161..180 run team modify win_area_cd_t suffix " Area opens in 9s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 141..160 run team modify win_area_cd_t suffix " Area opens in 8s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 121..140 run team modify win_area_cd_t suffix " Area opens in 7s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 101..120 run team modify win_area_cd_t suffix " Area opens in 6s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 81..100 run team modify win_area_cd_t suffix " Area opens in 5s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 61..80 run team modify win_area_cd_t suffix " Area opens in 4s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 41..60 run team modify win_area_cd_t suffix " Area opens in 3s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 21..40 run team modify win_area_cd_t suffix " Area opens in 2s"
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 1..20 run team modify win_area_cd_t suffix " Area opens in 1s"

execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 10801..12000 run team modify win_area_cd_t suffix " Area closes in 10min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 9601..10800 run team modify win_area_cd_t suffix " Area closes in 9min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 8401..9600 run team modify win_area_cd_t suffix " Area closes in 8min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 7201..8400 run team modify win_area_cd_t suffix " Area closes in 7min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 6001..7200 run team modify win_area_cd_t suffix " Area closes in 6min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 4801..6000 run team modify win_area_cd_t suffix " Area closes in 5min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 3601..4800 run team modify win_area_cd_t suffix " Area closes in 4min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 2401..3600 run team modify win_area_cd_t suffix " Area closes in 3min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 1201..2400 run team modify win_area_cd_t suffix " Area closes in 2min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 601..1200 run team modify win_area_cd_t suffix " Area closes in 1min"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 401..600 run team modify win_area_cd_t suffix " Area closes in 30s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 201..400 run team modify win_area_cd_t suffix " Area closes in 20s"

execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 181..200 run team modify win_area_cd_t suffix " Area closes in 10s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 161..180 run team modify win_area_cd_t suffix " Area closes in 9s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 141..160 run team modify win_area_cd_t suffix " Area closes in 8s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 121..140 run team modify win_area_cd_t suffix " Area closes in 7s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 101..120 run team modify win_area_cd_t suffix " Area closes in 6s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 81..100 run team modify win_area_cd_t suffix " Area closes in 5s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 61..80 run team modify win_area_cd_t suffix " Area closes in 4s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 41..60 run team modify win_area_cd_t suffix " Area closes in 3s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 21..40 run team modify win_area_cd_t suffix " Area closes in 2s"
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 1..20 run team modify win_area_cd_t suffix " Area closes in 1s"

execute if score tournament_running variables matches 0 run team modify win_area_cd_t suffix " Area is closed!"

execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 1201.. run team modify win_area_cd_t color green
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 601..1200 run team modify win_area_cd_t color yellow
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 201..600 run team modify win_area_cd_t color gold
execute if score win_area_on variables matches 0 if score tournament_running variables matches 1 if score win_area_cd variables matches 1..200 run team modify win_area_cd_t color red

execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 1201.. run team modify win_area_cd_t color green
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 601..1200 run team modify win_area_cd_t color yellow
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 201..600 run team modify win_area_cd_t color gold
execute if score win_area_on variables matches 1 if score tournament_running variables matches 1 if score win_area_close_cd variables matches 1..200 run team modify win_area_cd_t color red

execute if score tournament_running variables matches 0 run team modify win_area_cd_t color gray

execute if score winner_team variables matches -1 run team modify winner_t suffix {"text": " not determined", "color": "#AAAAAA"}
execute if score winner_team variables matches 1 run team modify winner_t suffix {"text": " Mushroom Team", "color": "#FF5555"}
execute if score winner_team variables matches 2 run team modify winner_t suffix {"text": " Jungle Team", "color": "#55FF55"}
execute if score winner_team variables matches 3 run team modify winner_t suffix {"text": " Tundra Team", "color": "#5555FF"}
execute if score winner_team variables matches 4 run team modify winner_t suffix {"text": " Desert Team", "color": "#FFFF55"}