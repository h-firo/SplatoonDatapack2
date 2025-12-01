#投げる力の調整
execute if score @s inkstrikeGuidePower matches ..1 run scoreboard players set @s inkstrikeGuidePower 1
execute if score @s inkstrikeGuidePower matches 30.. run scoreboard players set @s inkstrikeGuidePower 30

#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#ガイドを投げる
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2 {Tags:["guide$(num)","guides"],Invisible:true,Silent:true,Small:false,data:{team:$(team),owner:$(num),color:$(color)},attributes:[{id:"minecraft:gravity",base:0.1}]}
$summon item_display ~ ~ ~ {Tags:["guideDisplay$(num)"],data:{team:$(team),owner:$(num),color:$(color),num:$(objNum)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2,2,2]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["1"]},"minecraft:item_model":"guidepoint"}}}
$execute as @n[type=armor_stand,tag=guide$(num)] at @s run function core:specialweapons/tripleinkstrike/guide_as with entity @s data

#音
playsound block.note_block.banjo master @a ~ ~ ~ 0.7 1.5
playsound entity.wind_charge.throw master @a ~ ~ ~ 0.7 0.5

#スコア増加
scoreboard players add @s inkstrikeGuideCount 1

#リセット
scoreboard players set @s inkstrikeGuidePower 0

#kill @s
#summon armor_stand ~ ~ ~