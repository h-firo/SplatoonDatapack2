#近距離爆風
$execute as @e[distance=..1.5,tag=player] unless score @s team matches $(team) run function core:damages/remove_health {value:30,type:"reefslider",killer:$(owner)}
#遠距離爆風
$execute as @e[distance=1.5..2,tag=player] unless score @s team matches $(team) run function core:damages/remove_health {value:20,type:"reefslider",killer:$(owner)}
execute if entity @s[distance=..5] positioned ^ ^ ^1 unless block ~ ~ ~ #core:can_sticking run function core:specialweapons/reefslider/explosion/ind_plus with entity @s data