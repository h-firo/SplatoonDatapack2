#全プレイヤーに適用
tag @r[tag=!alreadyPlayerSet] add playerSet

#位置を割り当てるfunction
execute as @a[tag=playerSet] at @s run function core:game/player_set/assign_pos

#ループ
execute if entity @a[tag=!playerSet] run function core:game/player_set/loop