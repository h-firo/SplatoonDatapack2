$execute if score @s rotate matches -180..-135 run data merge entity @n[type=minecart,tag=float$(XpLevel)] {Motion:[0.0,0.0,-5.0]}
$execute if score @s rotate matches -135..-91 run data merge entity @n[type=minecart,tag=float$(XpLevel)] {Motion:[5.0,0.0,0.0]}
$execute if score @s rotate matches -90..-46 run data merge entity @n[type=minecart,tag=float$(XpLevel)] {Motion:[5.0,0.0,0.0]}
$execute if score @s rotate matches -45..-0 run data merge entity @n[type=minecart,tag=float$(XpLevel)] {Motion:[0.0,0.0,5.0]}
$execute if score @s rotate matches 0..44 run data merge entity @n[type=minecart,tag=float$(XpLevel)] {Motion:[0.0,0.0,5.0]}
$execute if score @s rotate matches 46..90 run data merge entity @n[type=minecart,tag=float$(XpLevel)] {Motion:[-5.0,0.0,0.0]}
$execute if score @s rotate matches 90..135 run data merge entity @n[type=minecart,tag=float$(XpLevel)] {Motion:[-5.0,0.0,0.0]}
$execute if score @s rotate matches 135..180 run data merge entity @n[type=minecart,tag=float$(XpLevel)] {Motion:[0.0,0.0,5.0]}