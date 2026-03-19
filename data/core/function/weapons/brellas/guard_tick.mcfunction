$execute if score @s ink matches ..$(ShieldInk) run scoreboard players set @s cannotGuard 1
$execute if score @s ink matches $(ShieldInk).. run scoreboard players set @s cannotGuard 0
execute if score @s shieldHealth matches ..0 run scoreboard players set @s cannotGuard 1
$execute if score @s shieldHealth matches ..0 unless score @s guardCoolDown matches 1.. run scoreboard players set @s guardCoolDown $(ShieldRT)

#ガード展開
$execute if score @s rightHold matches $(DeploymentT).. run function core:weapons/brellas/shieldopen with storage shot_temp: $(num)
execute unless score @s isGuard matches 1 run return fail

#ガード
$execute if items entity @s weapon.mainhand emerald[item_model="splatbrella_open"] run function core:weapons/brellas/guard/splatbrella with storage shot_temp: $(num)
$execute if items entity @s weapon.mainhand emerald[item_model="tentabrella_open"] run function core:weapons/brellas/guard/tentabrella with storage shot_temp: $(num)

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