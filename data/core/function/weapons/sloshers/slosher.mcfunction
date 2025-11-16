#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$execute if score @s slosherTime matches -1 positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^4.0 {Tags:["shot$(team)","ink","owner$(num)","sloshers","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}
$execute if score @s slosherTime matches 1 positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^3.0 {Tags:["shot$(team)","ink","owner$(num)","sloshers","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}
$execute if score @s slosherTime matches 2 positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","sloshers","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}
$execute if score @s slosherTime matches 3 positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^1.0 {Tags:["shot$(team)","ink","owner$(num)","sloshers","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}

$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run rotate @s facing entity @p[level=$(num)]
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run function core:weapons/sloshers/shot_as with storage shot_temp: $(num)
execute if score @s slosherTime matches -1 run playsound item.bucket.empty_lava master @a ~ ~ ~ 1 2
execute if score @s slosherTime matches -1 run playsound item.bucket.empty master @a ~ ~ ~ 0.6 1
scoreboard players set @s delay 9
$execute if score @s slosherTime matches -1 run function core:weapons/sloshers/setscores with storage shot_temp: $(num)
execute if score @s slosherTime matches 3.. run scoreboard players set @s slosherTime -1

$tag @e[type=armor_stand,tag=sn$(shotNum)] remove sn$(shotNum)