$execute if score @s ink matches ..$(ShieldInk) run scoreboard players set @s cannotGuard 1
$execute if score @s ink matches $(ShieldInk).. run scoreboard players set @s cannotGuard 0
execute if score @s shieldHealth matches ..0 run scoreboard players set @s cannotGuard 1
$execute if score @s shieldHealth matches ..0 unless score @s guardCoolDown matches 1.. run scoreboard players set @s guardCoolDown $(ShieldRT)

#ガード展開
$execute if score @s rightHold matches $(DeploymentT).. run function core:weapons/brellas/shieldopen with storage shot_temp: $(num)
execute unless score @s isGuard matches 1 run return fail

#ガード
$execute positioned ^ ^ ^1 as @e[tag=ink,distance=..2,tag=!objAttack] unless data entity @s {data:{team:$(team)}} run tag @s add objAttack
execute positioned ^ ^ ^1 as @e[tag=ink,distance=..2,tag=objAttack] run tag @s add attackedBrella
$execute positioned ^ ^ ^1 as @e[tag=ink,distance=..2,tag=objAttack] run data merge entity @s {data:{objNum:$(num)}}

#足元を塗る
$fill ^-0.5 ^-2 ^-0.5 ^0.5 ^1 ^0.5 $(color)_concrete replace #core:can_inking

#インク消費
$scoreboard players remove @s ink $(ShieldInk)

#パージ
$execute if score @s rightHold matches ..$(PurgeT) run return fail
$execute if score @s ink matches ..$(PurgeInk) run return fail
#objNumの増加
scoreboard players add num objNum 1
$execute store result storage shot_temp: $(num).objNum int 1 run scoreboard players get num objNum
$function core:weapons/brellas/purge with storage shot_temp: $(num)