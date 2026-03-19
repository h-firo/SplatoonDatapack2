say p
$execute positioned ^ ^ ^1 as @e[tag=ink,distance=..2,tag=!objAttack] unless data entity @s {data:{team:$(team)}} run tag @s add objAttack
execute positioned ^ ^ ^1 as @e[tag=ink,distance=..2,tag=objAttack] run tag @s add attackedBrella
$execute positioned ^ ^ ^1 as @e[tag=ink,distance=..2,tag=objAttack] run data merge entity @s {data:{objNum:$(num)}}