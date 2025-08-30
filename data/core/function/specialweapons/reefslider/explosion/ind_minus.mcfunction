#近距離爆風
$execute as @e[distance=..1,tag=player,tag=!attack$(num)] unless score @s team matches $(team) run scoreboard players remove @s health 3
#遠距離爆風
$execute as @e[distance=1..1.5,tag=player,tag=!attack$(num)] unless score @s team matches $(team) run scoreboard players remove @s health 10
execute if entity @s[distance=..5] positioned ^ ^ ^-1 unless block ~ ~ ~ #core:can_sticking run function core:specialweapons/reefslider/explosion/ind_minus with entity @s data