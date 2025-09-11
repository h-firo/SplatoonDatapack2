#タグ消去
$tag @e[tag=player] remove attack$(resetNum)

#resetNumを増加
scoreboard players add num resetNum 1
execute store result storage core: resetNum int 1 run scoreboard players get num resetNum

#ループ判定とループ
execute if score num resetNum < num shotNum run function core:game/reset/shotnum_loop with storage core: