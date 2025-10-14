#プレイヤーの方向を向く
scoreboard players set @a viewer -1
$playsound item.crossbow.shoot master @p[level=$(owner)] ~ ~ ~ 0.5 1.1
$playsound item.bundle.drop_contents master @p[level=$(owner)] ~ ~ ~ 1 1
$execute rotated as @p[level=$(owner)] run rotate @s ~ ~
$scoreboard players set @p[level=$(owner)] isShootReady 1
#$execute unless entity @s[x_rotation=65..80] rotated as @p[level=$(owner)] run rotate @s ~ 75