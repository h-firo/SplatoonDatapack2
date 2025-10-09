$summon item_display ~ ~ ~ {Tags:["jumpCarrier$(num)"],item_display:"ground",teleport_duration:0,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.5f,0f],scale:[1f,1f,1f]},\
                            item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"item_model":squid}}}
$rotate @n[tag=jumpCarrier$(num)] facing entity @n[tag=jumpTarget$(num)]
#$execute at @n[tag=jumpCarrier$(num)] run rotate @n[tag=jumpCarrier$(num)] ~ -40