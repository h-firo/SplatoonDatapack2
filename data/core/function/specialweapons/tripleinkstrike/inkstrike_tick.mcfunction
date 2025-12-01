#表示
$tp @n[type=item_display,tag=inkstrikeDisplay$(owner)] @s

scoreboard players add @s inkstrikeTimer 1

execute if score @s isStrike matches 1 run playsound entity.generic.explode master @a ~ ~ ~ 0.5 1.8
execute if score @s isStrike matches 1 run function core:specialweapons/tripleinkstrike/inkstrike_damage with entity @s data

#トルネード着弾
execute if data entity @s {OnGround:true} unless score @s isStrike matches 1 run function core:specialweapons/tripleinkstrike/inkstrike with entity @s data
execute if score @s inkstrikeTimer matches 20.. if score @s isStrike matches 1 run function core:specialweapons/tripleinkstrike/inkstrike_delete with entity @s data