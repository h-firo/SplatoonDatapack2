#演出
$summon item_display ~ ~ ~ {Tags:["inkstrike$(owner)"],data:{team:$(team),owner:$(owner),color:$(color)},item_display:"ground",teleport_duration:1,interpolation_duration:5,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[4,10,4]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"minecraft:item_model":"inkstrike"}}}
#塗り
$fill ~-3 ~-1 ~-3 ~3 ~10 ~3 $(color)_concrete replace #core:can_inking

scoreboard players set @s isStrike 1
scoreboard players set @s inkstrikeTimer 0