scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(num).shotNum int 1 run scoreboard players get num shotNum

$function core:weapons/rainmaker/shot with storage shot_temp: $(num)