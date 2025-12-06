execute unless entity @e[type=armor_stand,tag=inkmist,distance=..3.5] run scoreboard players set @s isMistEffect 0
$execute if entity @e[type=armor_stand,tag=inkmist,distance=..3.5] unless entity @e[nbt={data:{team:$(team)}}] unless score @s isMistEffect matches 1 run playsound entity.witch.drink master @a ~ ~ ~ 2 1
$execute if entity @e[type=armor_stand,tag=inkmist,distance=..3.5] unless entity @e[nbt={data:{team:$(team)}}] run scoreboard players set @s isMistEffect 1
execute if score @s isMistEffect matches 1 run function core:subweapons/toxicmist/effect
execute if score @s isMistEffect matches 0 run function core:subweapons/toxicmist/effect_clear