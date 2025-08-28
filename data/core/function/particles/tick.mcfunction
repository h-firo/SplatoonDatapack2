#function
execute unless score @s particleTimer matches 0.. run scoreboard players set @s particleTimer 0
execute store result entity @s data.timer int 1 run scoreboard players get @s particleTimer
function core:particles/text_change with entity @s data

#タイマーを増やす
scoreboard players add @s particleTimer 1
$execute if score @s particleTimer matches $(max).. run kill @s