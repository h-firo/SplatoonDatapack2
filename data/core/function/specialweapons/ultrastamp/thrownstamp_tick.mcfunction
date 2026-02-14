#表示
$tp @n[type=item_display,tag=ultrastamp$(owner)] @s
rotate @s ~ 90

#直撃ダメージ
$execute as @e[distance=..2.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:220,type:"ultrastamp",killer:$(owner)}

#爆発処理
execute if block ~1 ~ ~ #core:can_sticking run function core:specialweapons/ultrastamp/stamp_explosion with entity @s data
execute if block ~ ~ ~1 #core:can_sticking run function core:specialweapons/ultrastamp/stamp_explosion with entity @s data
execute if block ~-1 ~ ~ #core:can_sticking run function core:specialweapons/ultrastamp/stamp_explosion with entity @s data
execute if block ~ ~ ~-1 #core:can_sticking run function core:specialweapons/ultrastamp/stamp_explosion with entity @s data
execute if predicate core:is_onground run function core:specialweapons/ultrastamp/stamp_explosion with entity @s data
