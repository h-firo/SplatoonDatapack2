#シート用アマスタと表示用ItemDisplayを召喚
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ~ ~ ~ {Tags:["screen$(owner)"],Invisible:true,Silent:true,Small:false,data:{team:$(team),owner:$(owner),color:$(color),num:$(num)},attributes:[{id:"minecraft:gravity",base:0.1}]}
$summon item_display ~ ~ ~ {Tags:["screenDisplay$(owner)"],data:{team:$(team),owner:$(owner),color:$(color),num:$(num)},item_display:"ground",teleport_duration:1,interpolation_duration:20,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,1f,0f],scale:[7,7,7]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"minecraft:item_model":"splattercolorscreen_screen"}}}
$execute rotated as @p[level=$(owner)] run rotate @n[type=armor_stand,tag=screen$(owner)] ~ 0
$execute rotated as @p[level=$(owner)] run rotate @n[type=item_display,tag=screenDisplay$(owner)] ~ 0
$kill @e[type=item_display,tag=bottleDisplay$(owner)]
kill @s