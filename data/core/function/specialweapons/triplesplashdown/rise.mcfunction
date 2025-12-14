#中心パーティクル
$execute positioned ~ ~1 ~ run function core:specialweapons/triplesplashdown/summon_particle {num:$(num),radius:6,x:1}

#上昇
#上昇用エンティティ
$summon item_display ~ ~ ~ {Tags:["splashdownEntity$(num)"],teleport_duration:15}
#乗せる
$ride @s mount @n[type=item_display,tag=splashdownEntity$(num)]
#上げる
$tp @n[type=item_display,tag=splashdownEntity$(num)] ~ ~8 ~

#拳
$summon item_display ^3 ^ ^3 {Tags:["splashdownFist$(num)","fists"],data:{team:$(team),owner:$(num),color:$(color)},item_display:"ground",teleport_duration:15,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0f,0f],scale:[1.6f,1.6f,1.6f]},\
                            item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"item_model":triplesplashdown}}}
$summon item_display ^-3 ^ ^3 {Tags:["splashdownFist$(num)","fists"],data:{team:$(team),owner:$(num),color:$(color)},item_display:"ground",teleport_duration:15,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0f,0f],scale:[1.6f,1.6f,1.6f]},\
                            item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"item_model":triplesplashdown}}}
#拳パーティクル
$execute as @e[type=item_display,tag=splashdownFist$(num)] run data modify entity @s Pos[1] set from entity @p[level=$(num)] Pos[1]
$execute as @e[type=item_display,tag=splashdownFist$(num)] at @s run tp @s ~ ~-7 ~
$execute as @e[type=item_display,tag=splashdownFist$(num)] at @s run function core:specialweapons/triplesplashdown/summon_particle {num:$(num),radius:6,x:2}

#拳を上げる
$execute as @e[type=item_display,tag=splashdownFist$(num)] at @s run tp @s ~ ~6 ~