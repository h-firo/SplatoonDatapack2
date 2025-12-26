#パーティクル
particle explosion ~ ~ ~ 0 0 0 0 1 force @a

#音
playsound entity.generic.explode master @a ~ ~ ~ 1 1.5

#ダメージ
scoreboard players add num shotNum 1
execute store result entity @s data.shotNum int 1 run scoreboard players get num shotNum
function core:subweapons/inkmine/explosion_damage with entity @s
$execute as @e[distance=..2.7,tag=player] unless score @s team matches $(team) run tag @s add Marking
$execute as @e[distance=..2.7,tag=player,tag=Marking] run tag @s add Mark$(team)

#タグを外す
$tag @e[tag=player] remove inkMine$(bombNum)
tag @e[tag=player] remove attack-1

kill @s