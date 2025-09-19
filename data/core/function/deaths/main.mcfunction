execute if score @s resurrectionTime matches 1.. run return fail

#演出
scoreboard players set @s health 0
playsound block.glass.break master @a ~ ~ ~ 0.6
playsound item.bucket.empty master @a ~ ~ ~ 1 1.5

#バルーンの時
execute if entity @s[tag=balloon] run return run function core:deaths/balloon

#プレイヤー
#復活時間設定
scoreboard players set @s resurrectionTime 100
#リセット
scoreboard players set @s drinkTimer 0
scoreboard players set @s useSpecialWeapon 1
function core:weapons/chargers/charge_reset
#スペクテイターに
gamemode spectator @s