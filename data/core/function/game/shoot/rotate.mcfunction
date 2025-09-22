#プレイヤーの方向を向く
$execute rotated as @p[level=$(owner)] run rotate @s ~ ~
#$execute unless entity @s[x_rotation=65..80] rotated as @p[level=$(owner)] run rotate @s ~ 75