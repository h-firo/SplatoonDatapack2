#自身の座標を保存
execute store result score @s x run data get entity @s Pos[0] 1000
execute store result score @s z run data get entity @s Pos[2] 1000

#ジャンプ先の座標を保存
$execute as @n[tag=jumpTarget$(XpLevel)] at @s store result score @s x run data get entity @s Pos[0] 1000
$execute as @n[tag=jumpTarget$(XpLevel)] at @s store result score @s z run data get entity @s Pos[2] 1000

#ジャンプ先と自身の位置の中央値をとる
$scoreboard players operation @s x += @n[tag=jumpTarget$(XpLevel)] x
$scoreboard players operation @s z += @n[tag=jumpTarget$(XpLevel)] z
scoreboard players operation @s x /= 2 num
scoreboard players operation @s z /= 2 num

#中央値を保存
$execute store result storage player: $(XpLevel).jumpTopX double 0.001 run scoreboard players get @s x
$execute store result storage player: $(XpLevel).jumpTopZ double 0.001 run scoreboard players get @s z