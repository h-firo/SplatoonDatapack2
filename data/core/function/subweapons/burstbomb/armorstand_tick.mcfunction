#地形当たり判定
execute if block ~1 ~ ~ #core:can_sticking at @s run function core:subweapons/burstbomb/explosion with entity @s data
execute if block ~-1 ~ ~ #core:can_sticking at @s run function core:subweapons/burstbomb/explosion with entity @s data
execute if block ~ ~ ~1 #core:can_sticking at @s run function core:subweapons/burstbomb/explosion with entity @s data
execute if block ~ ~ ~-1 #core:can_sticking at @s run function core:subweapons/burstbomb/explosion with entity @s data

#直撃判定
execute if entity @e[distance=..1.5,tag=player] at @s run function core:subweapons/burstbomb/explosion with entity @s data