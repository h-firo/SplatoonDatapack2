#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","blasters","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
                            data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),\
                                radius:10,blastDamage:70,duration:3,speed:0.002},\
                                attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","attackDetection","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
                            data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),type:blaster,duration:3,speed:0.0022},\
                            attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","attackDetection","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
                            data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),type:blaster,duration:3,speed:0.0021},\
                            attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","attackDetection","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
                            data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),type:blaster,duration:3,speed:0.0018},\
                            attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","attackDetection","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
                            data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),type:blaster,duration:3,speed:0.0015},\
                            attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","attackDetection","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
                            data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),type:blaster,duration:3,speed:0.0012},\
                            attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","attackDetection","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
                            data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),type:blaster,duration:3,speed:0.001},\
                            attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","attackDetection","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
                            data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),type:blaster,duration:3,speed:0.0007},\
                            attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2.0 {Tags:["shot$(team)","ink","owner$(num)","attackDetection","sn$(shotNum)"],Invisible:true,Silent:true,Small:true,\
                            data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj),type:blaster,duration:3,speed:0.0004},\
                            attributes:[{id:"minecraft:gravity",base:0},{id:"minecraft:scale",base:0.1}]}
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run rotate @s facing entity @p[level=$(num)]
$execute as @e[type=armor_stand,tag=owner$(num),tag=sn$(shotNum)] at @s run function core:weapons/blasters/sblast/shot_as with entity @s data
playsound block.stone.place master @a ~ ~ ~ 0.8 1.5
scoreboard players set @s delay 9
$scoreboard players remove @s ink $(Ink)
$scoreboard players set @s shotDelay $(FireRate)
$scoreboard players add @s accuracy $(Blur)
$execute if score @s accuracy matches $(MaxBlur).. run scoreboard players set @s accuracy $(MaxBlur)

$tag @e[type=armor_stand,tag=sn$(shotNum)] remove sn$(shotNum)