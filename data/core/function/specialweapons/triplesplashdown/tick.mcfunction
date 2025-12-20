$ride @s mount @n[type=item_display,tag=splashdownEntity$(num)]

#無敵
execute if score @s useSpecialWeapon matches 33 run scoreboard players set @s isInvincible 1

#急降下
$data merge entity @n[type=item_display,tag=splashdownEntity$(num)] {teleport_duration:2}
$execute if score @s useSpecialWeapon matches 29 as @n[type=item_display,tag=splashdownEntity$(num)] at @s run tp @s ~ ~-8 ~
$execute if score @s useSpecialWeapon matches 27 run function core:specialweapons/triplesplashdown/explosion with storage special_temp: $(num)

#終了処理
$execute if score @s useSpecialWeapon matches ..25 run kill @e[type=item_display,tag=splashdownEntity$(num)]
execute if score @s useSpecialWeapon matches ..1 run scoreboard players set @s isInvincible 0