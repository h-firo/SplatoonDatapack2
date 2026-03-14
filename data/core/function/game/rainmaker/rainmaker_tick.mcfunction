execute unless score @s coreTime matches 20.. run return run scoreboard players add @s coreTime 1
execute positioned ~ ~-1 ~ unless entity @p[tag=player,distance=..1] run return fail

#もともとプレイヤーが持っていた武器を保存
execute as @p run function core:game/rainmaker/save_weapon with entity @s
execute as @p run function command:set_weapon {category:"others",weapon:"rainmaker"}
playsound block.amethyst_cluster.break master @a ~ ~ ~ 1 1
kill @s