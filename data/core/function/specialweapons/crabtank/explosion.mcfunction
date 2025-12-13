#爆発
particle explosion ~ ~ ~ 0 0 0 0 1
execute positioned ~ ~0.5 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~1 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~1.5 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~2 ~ run function core:subweapons/splashbomb/particle with entity @s data
$execute as @e[distance=..1.2,tag=player,tag=!crabtank$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:50,type:"crabtank_exp",killer:$(owner)}
$execute as @e[distance=..2.5,tag=player,tag=!crabtank$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:30,type:"crabtank_exp",killer:$(owner)}
$execute at @e[distance=..2.5,tag=player,tag=!crabtank$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
$execute if entity @e[distance=..2.5,tag=player,tag=!crabtank$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) as @a[level=$(owner)] at @s run playsound entity.player.hurt master @s ~ ~ ~ 1
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s
$execute as @e[distance=..2.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches 0 run tag @s add crabtank$(shotNum)