#地面に沿うように波を出す
$execute unless entity @s[y=-60,dy=0] if block ^ ^-3 ^$(waveSize) #air positioned ^ ^-3 ^$(waveSize) run return run function core:specialweapons/wavebreaker/circle_core with storage temp: $(owner)
$execute unless entity @s[y=-60,dy=0] if block ^ ^-2 ^$(waveSize) #air positioned ^ ^-2 ^$(waveSize) run return run function core:specialweapons/wavebreaker/circle_core with storage temp: $(owner)
$execute unless entity @s[y=-60,dy=0] if block ^ ^-1 ^$(waveSize) #air positioned ^ ^-1 ^$(waveSize) run return run function core:specialweapons/wavebreaker/circle_core with storage temp: $(owner)
$execute if block ^ ^ ^$(waveSize) #air positioned ^ ^ ^$(waveSize) run return run function core:specialweapons/wavebreaker/circle_core with storage temp: $(owner)
$execute if block ^ ^1 ^$(waveSize) #air positioned ^ ^1 ^$(waveSize) run return run function core:specialweapons/wavebreaker/circle_core with storage temp: $(owner)
$execute if block ^ ^2 ^$(waveSize) #air positioned ^ ^2 ^$(waveSize) run return run function core:specialweapons/wavebreaker/circle_core with storage temp: $(owner)
$execute positioned ^ ^ ^$(waveSize) run return run function core:specialweapons/wavebreaker/circle_core with storage temp: $(owner)