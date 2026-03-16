execute unless score @s coreTime matches 20.. run return run scoreboard players add @s coreTime 1
execute positioned ~ ~-1 ~ unless entity @p[tag=player,distance=..1,scores={useSpecialWeapon=..0}] run return fail

#もともとプレイヤーが持っていた武器を保存
execute as @p run function core:game/rainmaker/save_weapon with entity @s
execute as @p run function command:set_weapon {category:"others",weapon:"rainmaker"}

#スコアセット
scoreboard players set @p coreTime 1200
scoreboard players set @p ink 999

#移動速度減少
attribute @p movement_speed modifier add rainmaker -0.02 add_value

#演出
playsound block.amethyst_cluster.break master @a ~ ~ ~ 1 1
playsound block.note_block.chime master @a ~ ~ ~ 1 2
kill @s