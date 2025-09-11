$execute if score @s rightHold matches 1.. run return run kill @e[type=item_display,tag=squid$(num)]
$execute if score @s shotDelay matches 1.. run return run kill @e[type=item_display,tag=squid$(num)]
$execute if score @s charged matches 1.. run return run kill @e[type=item_display,tag=squid$(num)]

#プレイヤーを透明化
summon area_effect_cloud ~ ~ ~ \
{custom_particle:{type:"splash"},Radius:1f,Duration:10,Age:3,ReapplicationDelay:10,WaitTime:0,RadiusOnUse:-5f,potion_contents:{potion:"minecraft:water",\
custom_effects:[{id:"minecraft:invisibility",amplifier:1,duration:3,show_icon:false,show_particles:false}]}}

$execute if block ~ ~-1 ~ $(color)_concrete run return run kill @e[type=item_display,tag=squid$(num)]

#イカを表示(追従)
$execute if entity @e[type=item_display,tag=squid$(num)] if score @s isClimbd matches 0 run tp @e[type=item_display,tag=squid$(num)] ~ ~ ~ ~ 0
$execute if entity @e[type=item_display,tag=squid$(num)] if score @s isClimbd matches 1 if block ~1 ~ ~ $(color)_concrete run tp @e[type=item_display,tag=squid$(num)] ~ ~ ~ -90 -90
$execute if entity @e[type=item_display,tag=squid$(num)] if score @s isClimbd matches 1 if block ~-1 ~ ~ $(color)_concrete run tp @e[type=item_display,tag=squid$(num)] ~ ~ ~ 90 -90
$execute if entity @e[type=item_display,tag=squid$(num)] if score @s isClimbd matches 1 if block ~ ~ ~1 $(color)_concrete run tp @e[type=item_display,tag=squid$(num)] ~ ~ ~ 0 -90
$execute if entity @e[type=item_display,tag=squid$(num)] if score @s isClimbd matches 1 if block ~ ~ ~-1 $(color)_concrete run tp @e[type=item_display,tag=squid$(num)] ~ ~ ~ 180 -90
$execute unless entity @e[type=item_display,tag=squid$(num)] run \
summon item_display ~ ~ ~ {Tags:["squid$(num)"],item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.5f,0f],scale:[1f,1f,1f]},\
                            item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"item_model":squid}}}