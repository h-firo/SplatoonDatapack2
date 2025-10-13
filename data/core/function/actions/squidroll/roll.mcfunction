effect give @s invisibility 1 1 true

#イカロール頂点を召喚
$execute if score @s rollDirection matches 0 run function core:actions/squidroll/m_right/1 with storage player: $(num)
$execute if score @s rollDirection matches 0 run function core:actions/squidroll/m_right/2 with storage player: $(num)
$execute if score @s rollDirection matches 1 run function core:actions/squidroll/m_left/1 with storage player: $(num)
$execute if score @s rollDirection matches 1 run function core:actions/squidroll/m_left/2 with storage player: $(num)
$execute if score @s rollDirection matches 2 run function core:actions/squidroll/mz/1 with storage player: $(num)
$execute if score @s rollDirection matches 2 run function core:actions/squidroll/mz/2 with storage player: $(num)
$execute at @n[type=marker,tag=squidRoll$(num)_1] run tp @n[type=marker,tag=squidRoll$(num)_1] ~ ~1 ~

#ライド用エンティティを召喚
$summon item_display ~ ~ ~ {Tags:["rollCarrier$(num)"],item_display:"ground",teleport_duration:0,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.5f,0f],scale:[1f,1f,1f]},\
                            item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},"item_model":squid}}}
$rotate @n[tag=rollCarrier$(num)] facing entity @n[type=marker,tag=squidRoll$(num)_1]
$execute at @n[tag=rollCarrier$(num)] run rotate @n[tag=rollCarrier$(num)] ~ 0

#ライド
$ride @s mount @n[type=item_display,tag=rollCarrier$(num)]

scoreboard players set @s rollDirection -1
scoreboard players set @s rollDelay 0
