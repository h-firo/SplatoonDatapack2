#レールを引く
$execute as @n[type=armor_stand,tag=rail$(num)] at @s run function core:specialweapons/reefslider/armorstand_tick
$execute if score @s useSpecialWeapon matches ..110 run kill @n[type=armor_stand,tag=rail$(num)]


execute if score @s useSpecialWeapon matches 130.. run return fail

$ride @s mount @n[type=minecart,tag=float$(num)]

#トロッコを動かす
$execute at @n[type=minecart,tag=float$(num)] if block ~ ~-0.0625 ~ rail run function core:specialweapons/reefslider/float_motion with entity @s

#轢きダメージ
$execute as @e[distance=..1,tag=player,tag=!attack$(num)] unless score @s team matches $(team) run scoreboard players remove @s health 220

#爆発
$execute at @n[type=minecart,tag=float$(num)] unless block ~ ~-0.0625 ~ rail unless block ~ ~-0.0625 ~ air run function core:specialweapons/reefslider/exp with entity @s

$execute at @n[type=minecart,tag=float$(num)] if block ~ ~-0.0625 ~ rail run setblock ~ ~ ~ air

#発動後3秒経過していたら強制的に爆発
$execute if score @s useSpecialWeapon matches 1 at @n[type=minecart,tag=float$(num)] run function core:specialweapons/reefslider/exp with entity @s