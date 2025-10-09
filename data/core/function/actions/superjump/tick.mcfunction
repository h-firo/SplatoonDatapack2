scoreboard players add @s superJumpTime 1

$execute as @n[tag=jumpMarker$(XpLevel)] at @s run rotate @s ~20 ~

#ジャンプ待機時間
#execute if score @s superJumpTime matches ..26 run return fail

#飛ぶ
$execute if score @s superJumpTime matches 15 at @n[tag=jumpCarrier$(XpLevel)] run rotate @n[tag=jumpCarrier$(XpLevel)] ~ -40
$execute if score @s superJumpTime matches 26 run data merge entity @n[type=item_display,tag=jumpCarrier$(XpLevel)] {teleport_duration:23}
$execute if score @s superJumpTime matches 27 at @n[type=marker,tag=jumpTop$(XpLevel)] run tp @n[type=item_display,tag=jumpCarrier$(XpLevel)] ~ ~ ~

#$execute if score @s superJumpTime matches 27..50 run tp @n[type=item_display,tag=jumpSquid$(XpLevel)] @s

#降りる
$execute if score @s superJumpTime matches 50 at @n[tag=jumpTarget$(XpLevel)] rotated as @n[type=item_display,tag=jumpCarrier$(XpLevel)] run tp @n[type=item_display,tag=jumpCarrier$(XpLevel)] ~ ~ ~ ~ 120

#終了
execute if score @s superJumpTime matches 85.. run function core:actions/superjump/end with entity @s