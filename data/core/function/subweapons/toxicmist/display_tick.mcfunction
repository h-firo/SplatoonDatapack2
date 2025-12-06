$tp @s @n[type=armor_stand,tag=bomb$(bNum)]
$execute as @n[type=armor_stand,tag=bomb$(bNum)] unless predicate core:is_onground run return fail
execute at @s run function core:subweapons/toxicmist/explosion with entity @s data
$kill @n[type=armor_stand,tag=bomb$(bNum)]
kill @s