#ダメージ計算(クマサンブキには存在しない)
$scoreboard players set @s damage $(Damage)

#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタsummon(チャージ割合によってsummonするアマスタの数が変化するはずだが、クマサンブキには存在しない)
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),speed:0.002},attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),speed:0.0016},attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),speed:0.0012},attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),speed:0.0008},attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","charger"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),speed:0.0005},attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}

$execute as @e[type=armor_stand,tag=owner$(num)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num)] run scoreboard players operation @s damage = @p[level=$(num)] damage
$execute as @e[type=armor_stand,tag=owner$(num)] store result entity @s data.damage int 1 run scoreboard players get @s damage 
$execute as @e[type=armor_stand,tag=owner$(num)] at @s run function core:weapons/chargers/shot_as with entity @s data
$execute as @e[type=armor_stand,tag=owner$(num),nbt={data:{shotNum:$(shotNum)}}] at @s run rotate @s facing entity @p[level=$(num)]
scoreboard players set @s delay 9
$scoreboard players set @s removeInk $(Ink)
scoreboard players operation @s removeInk *= @s chargeTo100
scoreboard players operation @s removeInk /= 100 num
scoreboard players operation @s ink -= @s removeInk
$scoreboard players set @s shotDelay $(FireRate)
$scoreboard players add @s accuracy $(Blur)

tag @e[type=armor_stand,tag=shot1] remove shot1

playsound entity.player.attack.weak master @a ~ ~ ~ 1 0.5
playsound block.fence_gate.close master @a ~ ~ ~ 1 0.7
playsound block.fence_gate.close master @a ~ ~ ~ 0.8 0.6
playsound block.fence_gate.close master @a ~ ~ ~ 0.6 0.5