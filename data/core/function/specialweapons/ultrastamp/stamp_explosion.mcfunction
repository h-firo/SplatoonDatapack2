#演出
playsound item.bucket.empty_axolotl master @a ~ ~ ~ 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.2 1.5
#$function core:setflash with storage dustcolor: $(team)
$function core:subweapons/particle/set {radius:3,color:$(color)}

#塗り
$fill ~-2 ~-1 ~-2 ~2 ~2 ~2 $(color)_concrete replace #core:can_inking
$scoreboard players add @a[level=$(owner)] specialPoint 22

#攻撃
$execute as @e[distance=..2.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:220,type:"ultrastamp",killer:$(owner)}
$execute as @e[distance=..3.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:60,type:"ultrastamp",killer:$(owner)}
$execute as @e[distance=..3.5,tag=player] at @s unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1

$kill @n[type=item_display,tag=ultrastamp$(owner)]
kill @s