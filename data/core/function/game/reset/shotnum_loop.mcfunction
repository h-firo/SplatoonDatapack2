#タグ消去
$say $(resetNum)
$tag @e[tag=player,tag=attack$(resetNum)] remove attack$(resetNum)

#resetNumを増加
scoreboard players add num resetNum 1
execute store result storage core: resetNum int 1 run scoreboard players get num resetNum