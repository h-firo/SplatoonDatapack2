#近距離爆風
$execute as @e[distance=..1,tag=player,tag=!attack$(num)] unless score @s team matches $(team) run function core:damages/remove_health {value:3,type:"killerwail",killer:$(owner)}
#遠距離爆風
$execute as @e[distance=1..1.5,tag=player,tag=!attack$(num)] unless score @s team matches $(team) run function core:damages/remove_health {value:10,type:"reefslider",killer:$(owner)}
execute if entity @s[distance=..5] positioned ^ ^ ^-1 unless block ~ ~ ~ #core:can_sticking run function core:specialweapons/reefslider/explosion/ind_minus with entity @s data