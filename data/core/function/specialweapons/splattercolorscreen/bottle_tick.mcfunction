#表示
$tp @n[type=item_display,tag=bottleDisplay$(owner)] @s

#地面についたか？
execute if predicate core:is_onground run function core:specialweapons/splattercolorscreen/expand_screen with entity @s data