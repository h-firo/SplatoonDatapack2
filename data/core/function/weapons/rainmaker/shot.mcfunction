#投げる力の調整
execute if score @s charge matches ..1 run scoreboard players set @s charge 1

#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#ホコショット
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2 {Tags:["shot$(team)","rainmaker","owner$(num)","sn$(shotNum)","ink"],Invisible:true,Silent:true,Small:false,data:{team:$(team),owner:$(num),damage:$(Damage),shotNum:$(shotNum),damageAT:$(DamageAT),objDamage:$(obj)},attributes:[{id:"minecraft:gravity",base:0.1}]}
$summon item_display ~ ~ ~ {Tags:["rainmakerDisplay","owner$(num)"],data:{team:$(team),owner:$(num),num:$(shotNum)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1,1,1]},\
                            item:{id:"minecraft:turtle_scute",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]}}}}
#規模によって大きさを変える
$execute if score @s charge matches ..4 run data merge entity @n[type=item_display,tag=rainmakerDisplay,tag=owner$(num),distance=..1] \
{transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3,0.3,0.3]}}
$execute if score @s charge matches 5..9 run data merge entity @n[type=item_display,tag=rainmakerDisplay,tag=owner$(num),distance=..1] \
{transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5,0.5,0.5]}}
$execute if score @s charge matches 10..14 run data merge entity @n[type=item_display,tag=rainmakerDisplay,tag=owner$(num),distance=..1] \
{transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7,0.7,0.7]}}
$execute if score @s charge matches 15.. run data merge entity @n[type=item_display,tag=rainmakerDisplay,tag=owner$(num),distance=..1] \
{transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1,1,1]}}


$execute as @e[type=armor_stand,tag=owner$(num)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute if score @s charge matches 20 as @e[type=armor_stand,tag=owner$(num)] run data merge entity @s {data:{Explosion:true}}
$execute as @n[type=armor_stand,tag=owner$(num)] at @s run function core:weapons/rainmaker/shot_as with entity @s data

scoreboard players set @s delay 9
$scoreboard players set @s shotDelay $(FireRate)
$scoreboard players add @s accuracy $(Blur)

#反動
execute if predicate core:is_onground run item replace entity @s armor.feet with \
iron_boots[enchantments={"core:rainmaker":10},enchantment_glint_override=false,equippable={slot:feet,equip_sound:entity.tropical_fish.ambient}]
execute unless predicate core:is_onground run item replace entity @s armor.feet with \
iron_boots[enchantments={"core:rainmaker":4},enchantment_glint_override=false,equippable={slot:feet,equip_sound:entity.tropical_fish.ambient}]
schedule function core:weapons/rainmaker/clear_equip 2t

function core:weapons/rainmaker/charge_reset

#音
#playsound block.note_block.banjo master @a ~ ~ ~ 0.7 1.5
#playsound entity.wind_charge.throw master @a ~ ~ ~ 0.7 0.5

#kill @s
#summon armor_stand ~ ~ ~