$summon marker ~ ~ ~ {Tags:["avatar_root$(XpLevel)"]}

$rotate @n[type=marker,tag=avatar_root$(XpLevel)] ~ ~

$execute at @n[type=marker,tag=avatar_root$(XpLevel)] rotated as @s run tp @n[type=item_display,tag=arm_r,tag=avator$(XpLevel)] ^0.25 ^1.4 ^0 ~ 0
$execute at @n[type=marker,tag=avatar_root$(XpLevel)] rotated as @s run tp @n[type=item_display,tag=arm_l,tag=avator$(XpLevel)] ^-0.25 ^1.4 ^0 ~ 0
$execute at @n[type=marker,tag=avatar_root$(XpLevel)] rotated as @s run tp @n[type=item_display,tag=leg_r,tag=avator$(XpLevel)] ^0.125 ^0.7 ^0 ~ 0
$execute at @n[type=marker,tag=avatar_root$(XpLevel)] rotated as @s run tp @n[type=item_display,tag=leg_l,tag=avator$(XpLevel)] ^-0.125 ^0.7 ^0 ~ 0
$execute at @n[type=marker,tag=avatar_root$(XpLevel)] rotated as @s run tp @n[type=item_display,tag=torso,tag=avator$(XpLevel)] ^0 ^1.4 ^0 ~ 0
$execute at @n[type=marker,tag=avatar_root$(XpLevel)] rotated as @s run tp @n[type=item_display,tag=head,tag=avator$(XpLevel)] ^0 ^1.4 ^0 ~ 0
$execute at @n[type=marker,tag=avatar_root$(XpLevel)] rotated as @s run tp @n[type=item_display,tag=weapon,tag=avator$(XpLevel)] ^0.35 ^0.7 ^-0.2 ~180 80

$kill @n[type=marker,tag=avatar_root$(XpLevel)]