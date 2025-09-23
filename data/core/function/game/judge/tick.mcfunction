#coreTimeを増やす（再利用）
scoreboard players add time coreTime 1

#初期表示後待機時間（勝敗判定画面に移行したことを認識させる時間）
execute if score time coreTime matches ..20 run return fail
title @a times 0 8 0
execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.3 0.7
execute unless score team1 blockCountDisplay >= team1 blockCounts run scoreboard players add team1 blockCountDisplay 10
execute if score team1 blockCountDisplay >= team1 blockCounts run scoreboard players operation team1 blockCountDisplay = team1 blockCounts
execute unless score team2 blockCountDisplay >= team2 blockCounts run scoreboard players add team2 blockCountDisplay 10
execute if score team2 blockCountDisplay >= team2 blockCounts run scoreboard players operation team2 blockCountDisplay = team2 blockCounts
function core:game/judge/show_text with storage core: joinColor
execute if score team1 blockCountDisplay >= team1 blockCounts if score team2 blockCountDisplay >= team2 blockCounts run function core:game/judge/countup_end with storage core: joinColor