#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(num).shotNum int 1 run scoreboard players get num shotNum

$execute if data storage shot_temp: {$(num):{name:"splatbrella"}} run function core:weapons/brellas/splatbrella with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"tentabrella"}} run function core:weapons/brellas/tentabrella with storage shot_temp: $(num)