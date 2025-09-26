#前進
execute on passengers at @s if score value stage matches 0 if entity @s[z=-225,dz=10] on vehicle run kill @s
execute on passengers at @s if score value stage matches 0 if entity @s[z=-158,dz=-10] on vehicle run kill @s
execute if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air run return run tp @s ^ ^ ^3
scoreboard players set @s isShootReady 0
kill @s