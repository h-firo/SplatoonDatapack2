$ride @s mount @n[type=item_display,tag=rollCarrier$(num)]
$execute if score @s rollDelay matches ..6 at @n[type=item_display,tag=rollCarrier$(num)] if block ^ ^ ^0.05 #core:can_sticking run function core:actions/squidroll/end with entity @s

$execute if score @s rollDelay matches 0 run data merge entity @n[type=item_display,tag=rollCarrier$(num)] {teleport_duration:5}
$execute if score @s rollDelay matches 1 at @n[type=marker,tag=squidRoll$(num)_1] run tp @n[type=item_display,tag=rollCarrier$(num)] ~ ~ ~
#$execute if score @s rollDelay matches 6 run rotate @n[tag=rollCarrier$(num)] facing entity @n[type=marker,tag=squidRoll$(num)_2]
$execute if score @s rollDelay matches 6 at @n[type=marker,tag=squidRoll$(num)_2] run tp @n[type=item_display,tag=rollCarrier$(num)] ~ ~ ~

execute if score @s rollDelay matches 12.. run function core:actions/squidroll/end with entity @s