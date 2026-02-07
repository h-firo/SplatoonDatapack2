#演出
playsound item.bucket.empty_axolotl master @a ~ ~ ~ 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.2 1.5
playsound block.fire.extinguish master @a ~ ~ ~ 0.5 2
$function core:subweapons/particle/set {radius:2.5,color:$(color)}

#塗り
$fill ~-1.5 ~-1 ~-1.5 ~1.5 ~1.5 ~1.5 $(color)_concrete replace #core:can_inking
$scoreboard players add @a[level=$(owner)] specialPoint 22

#攻撃
$execute as @e[distance=..2.0,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:15,type:"fizzybomb",killer:$(owner)}
$execute as @e[distance=..3.0,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:35,type:"fizzybomb",killer:$(owner)}
$execute as @e[distance=..3.0,tag=player] at @s unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1

$scoreboard players set @n[type=armor_stand,tag=bomb$(bNum)] fizzy 1
scoreboard players add @s fizzyCount 1
$scoreboard players add @n[type=armor_stand,tag=bomb$(bNum)] explosionTimer 1
execute if score @s fizzyCount >= @s maxFizzyCount run function core:subweapons/fizzybomb/kill with entity @s data
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s