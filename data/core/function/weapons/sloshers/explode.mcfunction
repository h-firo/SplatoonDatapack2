#爆発
particle explosion ~ ~ ~ 0 0 0 0 1
$fill ~-2 ~-1 ~-2 ~2 ~2 ~2 $(color)_concrete replace #core:can_inking
$execute as @e[distance=..2.3,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health 35
$execute as @e[distance=..2.3,tag=player] at @s unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
$execute as @e[distance=..2.3,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) as @a[level=$(owner)] at @s run playsound entity.player.hurt master @s ~ ~ ~ 1