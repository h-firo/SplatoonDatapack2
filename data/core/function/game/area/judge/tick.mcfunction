#coreTimeを増やす（再利用）
scoreboard players add time coreTime 1

#初期表示後待機時間（勝敗判定画面に移行したことを認識させる時間）
execute if score time coreTime matches ..20 run return fail
title @a times 0 8 0
execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.3 0.7
execute unless score team1 blockCountDisplay <= team1 areaLowestCount run scoreboard players remove team1 blockCountDisplay 1
execute if score team1 blockCountDisplay <= team1 areaLowestCount run scoreboard players operation team1 blockCountDisplay = team1 areaLowestCount
execute unless score team2 blockCountDisplay <= team2 areaLowestCount run scoreboard players remove team2 blockCountDisplay 1
execute if score team2 blockCountDisplay <= team2 areaLowestCount run scoreboard players operation team2 blockCountDisplay = team2 areaLowestCount
function core:game/judge/show_text with storage core: joinColor
execute if score team1 blockCountDisplay <= team1 areaLowestCount if score team2 blockCountDisplay <= team2 areaLowestCount run function core:game/area/judge/countdown_end with storage core: joinColor