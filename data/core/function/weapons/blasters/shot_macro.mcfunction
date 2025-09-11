#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(XpLevel).shotNum int 1 run scoreboard players get num shotNum

$execute if data storage player: {$(XpLevel):{weapon:{name:"sblast92"}}} if score @s blastMode matches 0 run return run function core:weapons/blasters/sblast/range_mode with storage shot_temp: $(XpLevel)
$execute if data storage player: {$(XpLevel):{weapon:{name:"sblast92"}}} if score @s blastMode matches 1 run return run function core:weapons/blasters/sblast/near_mode with storage shot_temp: $(XpLevel)
$function core:weapons/blasters/shot with storage shot_temp: $(XpLevel)