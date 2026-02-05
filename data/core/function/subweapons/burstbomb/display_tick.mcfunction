$tp @s @n[type=armor_stand,tag=bomb$(bNum)]
$execute as @n[type=armor_stand,tag=bomb$(bNum)] if predicate core:is_onground run scoreboard players add @s explosionTimer 1

#地形当たり判定
$execute if entity @n[type=armor_stand,tag=bomb$(bNum),predicate=core:is_onground] at @s run function core:subweapons/burstbomb/explosion with entity @s data
$execute at @n[type=armor_stand,tag=bomb$(bNum)] run function core:subweapons/burstbomb/armorstand_tick

$execute unless score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 200.. run return fail
execute at @s run function core:subweapons/burstbomb/explosion with entity @s data