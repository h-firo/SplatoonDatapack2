execute unless block ^ ^ ^1 #air run return fail
execute if entity @e[tag=bomb,nbt={data:{type:"splashwall"}},distance=..1] run return fail

#移動
tp @s ^ ^ ^1

#レールを引く
$execute if block ~ ~-1 ~ #air unless score @s isAirRail matches 1 run summon block_display ~ ~ ~ {Tags:["rail$(num)"],block_state:{Name:"rail"}}
execute if block ~ ~-1 ~ #air run rotate @s ~ 45
execute if block ~ ~-1 ~ #air unless score @s isAirRail matches 1 run scoreboard players set @s isAirRail 1
$execute if block ~ ~-1 ~ #air if score @s isAirRail matches 1 run summon block_display ~ ~ ~ {Tags:["rail$(num)"],block_state:{Name:"rail"}}
$execute unless block ~ ~-1 ~ #air if score @s isAirRail matches 1 run summon block_display ~ ~-1 ~ {Tags:["rail$(num)"],block_state:{Name:"rail",Properties:{shape:"ascending_north"}}}
execute unless block ~ ~-1 ~ #air run rotate @s ~ 0
execute unless block ~ ~-1 ~ #air if score @s isAirRail matches 1 run scoreboard players set @s isAirRail 0
$execute unless block ~ ~-1 ~ #air unless score @s isAirRail matches 1 run summon block_display ~ ~ ~ {Tags:["rail$(num)"],block_state:{Name:"rail"}}

#レール塗り
$fill ~-0.5 ~-1 ~-0.5 ~0.5 ~ ~0.5 $(color)_concrete replace #core:can_inking

$execute rotated as @s run rotate @n[type=block_display,tag=rail$(num)] ~ ~