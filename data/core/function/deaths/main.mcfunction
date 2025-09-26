execute if score @s resurrectionTime matches 1.. run return run scoreboard players set @s health 100
execute if score @s isInvincible matches 1 run return run scoreboard players set @s health 100
scoreboard players set @s isShootReady 0

#演出
scoreboard players set @s health 0
playsound block.glass.break master @a ~ ~ ~ 0.6
playsound item.bucket.empty master @a ~ ~ ~ 1 1.5

#バルーンの時
execute if entity @s[tag=balloon] run return run function core:deaths/balloon

#プレイヤー
#復活時間設定
execute if score @s drinkTimer matches 1.. run scoreboard players set @s resurrectionTime 20
execute unless score @s drinkTimer matches 1.. run scoreboard players set @s resurrectionTime 100
#リセット
scoreboard players set @s drinkTimer 0
scoreboard players set @s useSpecialWeapon 1
function core:weapons/chargers/charge_reset
#スペクテイターに
gamemode spectator @s