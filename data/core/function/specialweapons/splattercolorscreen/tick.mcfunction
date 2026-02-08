#瓶のtick
$execute as @e[tag=bottle$(num),type=armor_stand] at @s run function core:specialweapons/splattercolorscreen/bottle_tick with entity @s data

#シートのtick
$execute as @e[tag=screen$(num),type=armor_stand] at @s run function core:specialweapons/splattercolorscreen/screen_tick with entity @s data

#時間になったら消す
$execute if score @s useSpecialWeapon matches 20 run data merge entity @n[type=item_display,tag=screenDisplay$(num)] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,1f,0f],scale:[0,7,0]}}
$execute if score @s useSpecialWeapon matches ..1 run kill @e[tag=screen$(num),type=armor_stand]
$execute if score @s useSpecialWeapon matches ..1 run kill @e[tag=screenDisplay$(num),type=item_display]
