#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(num).shotNum int 1 run scoreboard players get num shotNum

#武器種類によって分ける
$execute if data storage shot_temp: {$(num):{name:"dynamoroller"}} if score @s isVerticalShot matches 0 run return run function core:weapons/rollers/dynamo/shot with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"dynamoroller"}} if score @s isVerticalShot matches 1 run return run function core:weapons/rollers/dynamo/vertical_shot with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"wideroller"}} if score @s isVerticalShot matches 0 run return run function core:weapons/rollers/wide/shot with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"wideroller"}} if score @s isVerticalShot matches 1 run return run function core:weapons/rollers/wide/vertical_shot with storage shot_temp: $(num)
$execute if data storage shot_temp: {$(num):{name:"flingzaroller"}} if score @s isVerticalShot matches 1 run return run function core:weapons/rollers/flingza/vertical_shot with storage shot_temp: $(num)

#横振りか縦振りか
$execute if score @s isVerticalShot matches 0 run function core:weapons/rollers/shot with storage shot_temp: $(num)
$execute if score @s isVerticalShot matches 1 run function core:weapons/rollers/vertical_shot with storage shot_temp: $(num)