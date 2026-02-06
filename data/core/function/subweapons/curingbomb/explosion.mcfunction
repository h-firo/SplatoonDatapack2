#演出
playsound item.bucket.empty_axolotl master @a ~ ~ ~ 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.2 1.5
$function core:subweapons/particle/set {radius:1,color:$(color)}

#塗り
$fill ~-1.2 ~-1 ~-1.2 ~1.2 ~2 ~1.2 $(color)_concrete replace #core:can_inking
$scoreboard players add @a[level=$(owner)] specialPoint 15

#攻撃
$execute as @e[distance=..1.5,tag=player,tag=!bomb$(bNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:180,type:"curingbomb",killer:$(owner)}
$execute as @e[distance=..2,tag=player,tag=!bomb$(bNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:30,type:"curingbomb",killer:$(owner)}
$execute at @e[distance=..2,tag=player,tag=!bomb$(bNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s
$execute as @e[distance=..2,tag=player] unless entity @s[level=$(owner)] unless score @s team matches 0 run tag @s add bomb$(bNum)