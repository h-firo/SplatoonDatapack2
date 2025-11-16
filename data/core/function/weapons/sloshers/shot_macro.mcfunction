#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(XpLevel).shotNum int 1 run scoreboard players get num shotNum

$function core:weapons/sloshers/shot with storage shot_temp: $(XpLevel)