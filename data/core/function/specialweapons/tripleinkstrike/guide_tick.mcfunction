#表示
$tp @n[type=item_display,tag=guideDisplay$(owner)] @s

#着地
execute if data entity @s {OnGround:true} run function core:specialweapons/tripleinkstrike/guide_set with entity @s data