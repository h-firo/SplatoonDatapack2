#軌道用アマスタ
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2 {Tags:["ThrownStamp$(num)"],Invisible:true,Silent:true,Small:false,data:{team:$(team),owner:$(num),color:$(color),num:$(objNum)},attributes:[{id:"minecraft:gravity",base:0.05}]}
$execute as @e[type=armor_stand,tag=ThrownStamp$(num)] at @s run function core:specialweapons/ultrastamp/stamp_as with entity @s data
scoreboard players set @s isStampThrow 1
scoreboard players set @s useSpecialWeapon 1