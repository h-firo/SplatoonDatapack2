#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(num).shotNum int 1 run scoreboard players get num shotNum

$execute if data storage shot_temp: {$(num):{name:"eliter4k"}} run function core:weapons/chargers/eliter4k with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"splatcharger"}} run function core:weapons/chargers/splatcharger with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"squiffer"}} run function core:weapons/chargers/squiffer with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"grizzcocharger"}} run function core:weapons/chargers/grizzcocharger with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"snipewriter"}} if score @s snipewriterBullet matches 1.. run function core:weapons/chargers/snipewriter_full with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"snipewriter"}} unless score @s snipewriterBullet matches 1.. run function core:weapons/chargers/snipewriter_normal with storage shot_temp: $(num)