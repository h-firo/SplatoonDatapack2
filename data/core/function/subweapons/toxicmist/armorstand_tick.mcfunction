#ミストのtick
scoreboard players add @s explosionTimer 1
execute if data entity @s {data:{team:0}} run particle effect{color:[0.122,0.122,1.000]} ~ ~ ~ 1 1 1 0 3 force
execute if data entity @s {data:{team:1}} run particle effect{color:[1.000,0.969,0.098]} ~ ~ ~ 1 1 1 0 3 force
execute if data entity @s {data:{team:2}} run particle effect{color:[1.000,0.329,0.329]} ~ ~ ~ 1 1 1 0 3 force
execute if data entity @s {data:{team:3}} run particle effect{color:[1.000,0.380,0.816]} ~ ~ ~ 1 1 1 0 3 force
execute if data entity @s {data:{team:4}} run particle effect{color:[0.376,1.000,0.251]} ~ ~ ~ 1 1 1 0 3 force
particle effect{color:[0.220,0.208,0.208]} ~ ~ ~ 1 1 1 0 2 force
execute if score @s explosionTimer matches ..100 run return fail

#消去
kill @n[type=block_display,tag=inkmistdisplay]
kill @s