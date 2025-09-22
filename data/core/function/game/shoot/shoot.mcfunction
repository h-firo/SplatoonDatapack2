#前進
execute if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air run return run tp @s ^ ^ ^3
scoreboard players set @s isShootReady 0
kill @s