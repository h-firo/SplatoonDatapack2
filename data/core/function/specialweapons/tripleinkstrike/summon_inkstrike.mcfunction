#トルネード召喚
$summon armor_stand ~ ~10 ~ {Tags:["inkstrike$(owner)","inkstrikes"],Invisible:true,Silent:true,Small:false,data:{team:$(team),owner:$(owner),color:$(color)},attributes:[{id:"minecraft:gravity",base:0.1}]}
$summon item_display ~ ~10 ~ {Tags:["inkstrikeDisplay$(owner)"],data:{team:$(team),owner:$(owner),color:$(color)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2,2,2]},\
                            item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"inkstriker"}}}

kill @s