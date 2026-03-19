scoreboard players add @s purgeSurvivalTime 1

#表示
$tp @n[type=item_display,tag=purgeDisplay$(owner)] ~ ~1 ~

#塗り
$fill ~-1 ~-1 ~-1 ~ ~1 ~ $(color)_concrete replace #core:can_inking

#ガード
$execute positioned ^ ^ ^1 as @e[tag=ink,distance=..2,tag=!objAttack] unless data entity @s {data:{team:$(team)}} run tag @s add objAttack
$execute positioned ^ ^ ^1 as @e[tag=ink,distance=..2,tag=objAttack] run data merge entity @s {data:{objNum:$(num)}}
execute if score @s objDamage matches ..0 run function core:weapons/brellas/purge_kil with entity @s data

$execute if score @s purgeSurvivalTime matches $(maxTime).. run function core:weapons/brellas/purge_kil with entity @s data