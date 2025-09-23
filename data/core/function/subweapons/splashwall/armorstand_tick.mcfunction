execute if predicate core:is_onground run scoreboard players add @s explosionTimer 1
execute if score @s explosionTimer matches ..70 run particle dust{color:[1,1,1],scale:0.6} ~ ~0.3 ~ 0.1 0 0.1 0 1 force @a
execute if score @s explosionTimer matches 71..100 run particle dust{color:[1,0.7,0.7],scale:0.6} ~ ~0.3 ~ 0.1 0 0.1 0 1 force @a
execute if score @s explosionTimer matches 101.. run particle dust{color:[1,0.5,0.5],scale:0.6} ~ ~0.3 ~ 0.1 0 0.1 0 1 force @a
execute if score @s explosionTimer matches 1 at @s run playsound block.piston.extend master @a ~ ~ ~ 1 0.6

#ガード処理(新処理）
function core:subweapons/splashwall/guard with entity @s data
#ガード処理（旧処理）
#$execute if entity @e[tag=ink,distance=..2.5,tag=!shot$(team)] run playsound block.vault.hit master @a ~ ~ ~ 0.6 1
#$execute if entity @e[tag=ink,distance=..2.5,tag=!shot$(team)] run scoreboard players add @s explosionTimer 2
#$execute as @e[tag=ink,distance=..2.5,tag=!shot$(team)] run kill @s

execute if score @s objDamage matches ..1 run function core:subweapons/splashwall/break
execute if score @s explosionTimer matches 133.. run function core:subweapons/splashwall/break