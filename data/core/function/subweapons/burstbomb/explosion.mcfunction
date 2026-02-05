#演出
playsound item.bucket.empty_axolotl master @a ~ ~ ~ 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.2 1.5
#$function core:setflash with storage dustcolor: $(team)
$function core:subweapons/particle/set {radius:2,color:$(color)}

#塗り
$fill ~-2 ~-1 ~-2 ~2 ~2 ~2 $(color)_concrete replace #core:can_inking
$scoreboard players add @a[level=$(owner)] specialPoint 22


#攻撃
$execute as @e[distance=..2.0,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:18,type:"splashbomb",killer:$(owner)}
$execute as @e[distance=..2.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:13,type:"splashbomb",killer:$(owner)}
$execute as @e[distance=..2.5,tag=player] at @s unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s

$kill @n[type=armor_stand,tag=bomb$(bNum)]
kill @s