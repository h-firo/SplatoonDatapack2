#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","sloshingmachine","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),invisible:false},attributes:[{id:"minecraft:gravity",base:$(Gravity)},{id:"minecraft:scale",base:0.1}]}

$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run rotate @s facing entity @p[level=$(num)]
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run function core:weapons/sloshers/shot_as with storage shot_temp: $(num)
playsound entity.player.attack.weak master @a ~ ~ ~ 2 0.5
playsound block.chiseled_bookshelf.insert master @a ~ ~ ~ 2 0.3
playsound ui.stonecutter.take_result master @a ~ ~ ~ 0.4 1.3
scoreboard players set @s delay 9
$scoreboard players remove @s ink $(Ink)
$scoreboard players set @s shotDelay $(FireRate)
$scoreboard players add @s accuracy $(Blur)
$execute if score @s accuracy matches $(MaxBlur).. run scoreboard players set @s accuracy $(MaxBlur)
execute if score @s slosherTime matches 0.. run scoreboard players set @s slosherTime -1

$tag @e[type=armor_stand,tag=sn$(shotNum)] remove sn$(shotNum)