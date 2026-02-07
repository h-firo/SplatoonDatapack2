$tp @s @n[type=armor_stand,tag=bomb$(bNum)]
$execute as @n[type=armor_stand,tag=bomb$(bNum)] if predicate core:is_onground run scoreboard players add @s explosionTimer 1

#三段階爆発
$execute if score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 5 at @s run function core:subweapons/fizzybomb/explosion with entity @s data
$execute if score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 8 at @s run function core:subweapons/fizzybomb/explosion with entity @s data
$execute if score @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer matches 12 at @s run function core:subweapons/fizzybomb/explosion with entity @s data
