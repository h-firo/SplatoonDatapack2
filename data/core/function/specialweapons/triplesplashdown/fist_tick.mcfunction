scoreboard players add @s fistTimer 1

#急降下
execute if score @s fistTimer matches 29 run data merge entity @s {teleport_duration:2}
execute if score @s fistTimer matches 29 run tp @s ~ ~-6 ~
$execute if score @s fistTimer matches 31 run function core:specialweapons/triplesplashdown/explosion with storage special_temp: $(owner)

execute if score @s fistTimer matches 33.. run kill @s