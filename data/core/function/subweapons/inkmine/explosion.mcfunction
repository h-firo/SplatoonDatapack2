#パーティクル
particle explosion ~ ~ ~ 0 0 0 0 1 force @a

#音
playsound entity.generic.explode master @a ~ ~ ~ 1 1.5

#ダメージ
$function core:damage {distance:20,num:-1,team:$(team),damage:45,objDamage:90,volume:0.8,owner:$(owner),objNum:-1}
$function core:damage {distance:27,num:-1,team:$(team),damage:35,objDamage:70,volume:0.8,owner:$(owner),objNum:-1}
$execute as @e[distance=..2.7,tag=player] unless score @s team matches $(team) run tag @s add Marking
$execute as @e[distance=..2.7,tag=player,tag=Marking] run tag @s add Mark$(team)

#タグを外す
$tag @e[tag=player] remove inkMine$(bombNum)
tag @e[tag=player] remove attack-1

kill @s