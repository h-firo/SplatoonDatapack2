#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 150
scoreboard players set @s specialPoint 0
scoreboard players set @s isStampThrow 0

attribute @s movement_speed modifier add ultrastamp -0.05 add_value
#ItemDisplay召喚
$summon item_display ~ ~ ~ {Tags:["ultrastamp$(num)"],data:{team:$(team),owner:$(num),color:$(color),num:$(objNum)},item_display:"ground",teleport_duration:1,interpolation_duration:4,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0f,0f],scale:[2,2,2]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"minecraft:item_model":"ultrastamp"}}}

item modify entity @s hotbar.1 {function:"set_components",components:{custom_model_data:{strings:["none"]}}}

#前隙
scoreboard players set @s preDelay 10

playsound item.armor.equip_netherite master @a ~ ~ ~ 1.5 1