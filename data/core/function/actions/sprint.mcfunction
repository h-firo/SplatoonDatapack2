#イカ移動入力検知
execute if predicate core:is_sprint run scoreboard players set @s isSprint 1
execute if predicate core:is_sneaking run scoreboard players set @s isSprint 1
execute if predicate core:else_sprint run scoreboard players set @s isSprint 0
execute if score @s rightHold matches 1.. run scoreboard players set @s isSprint 0
execute if score @s shotDelay matches 1.. run scoreboard players set @s isSprint 0
execute if score @s charged matches 1.. run scoreboard players set @s isSprint 0

#イカの姿
$execute if score @s isSprint matches 1 run function core:actions/squidform with storage player: $(num)
$execute if score @s isSprint matches 0 run kill @e[type=item_display,tag=squid$(num)]

#武器透明化
execute if score @s isSprint matches 1 if score @s chargeKeepTime matches -1 if items entity @s weapon.mainhand emerald[custom_data~{item:"weapon"}] run item modify entity @s weapon.mainhand {function:"set_custom_model_data",strings:{values:["1"],mode:"replace_section"}}
execute if score @s isSprint matches 0 if score @s chargeKeepTime matches -1 if items entity @s weapon.mainhand emerald[custom_data~{item:"weapon"}] run item modify entity @s weapon.mainhand {function:"set_custom_model_data",strings:{values:["0"],mode:"replace_section"}}
execute if score @s isSprint matches 1 if score @s chargeKeepTime matches -1 if items entity @s weapon.mainhand emerald[custom_data~{item:"weapon"}] run item modify entity @s weapon.offhand {function:"set_custom_model_data",strings:{values:["1"],mode:"replace_section"}}
execute if score @s isSprint matches 0 if score @s chargeKeepTime matches -1 if items entity @s weapon.mainhand emerald[custom_data~{item:"weapon"}] run item modify entity @s weapon.offhand {function:"set_custom_model_data",strings:{values:["0"],mode:"replace_section"}}

#下が自分のチームのブロックでなければ早くならない
$execute unless block ~ ~-1 ~ $(color)_concrete run scoreboard players set @s isSprint 0

#イカの姿
$execute if predicate core:is_sneaking run function core:actions/squidform with storage player: $(num)
$execute if predicate core:is_sprint run function core:actions/squidform with storage player: $(num)

#イカ移動演出
$execute if score @s isSprint matches 1 if predicate core:is_squidmoving run particle block{block_state:{Name:"$(color)_concrete"}} ~ ~ ~ 0 0 0 0 1 force

#体力回復
execute if score @s isSprint matches 1 unless score @s isMistEffect matches 1 run scoreboard players add @s health 2
execute if score @s isSprint matches 1 if score @s health matches 100.. run scoreboard players set @s health 100

#インク回復
execute if score @s isSprint matches 1 unless score @s isMistEffect matches 1 run scoreboard players add @s ink 15
execute if score @s ink matches 999.. run scoreboard players set @s ink 999

#効果
execute if score @s isSprint matches 1 run summon area_effect_cloud ~ ~ ~ \
{custom_particle:{type:"splash"},Radius:1f,Duration:10,Age:3,ReapplicationDelay:10,WaitTime:0,RadiusOnUse:-5f,potion_contents:{potion:"minecraft:water",\
custom_effects:[{id:"minecraft:speed",amplifier:4,duration:3,show_icon:false,show_particles:false}]}}