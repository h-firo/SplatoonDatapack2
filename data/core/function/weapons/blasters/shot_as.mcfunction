#ブレ（発射点）
#(左右)どちらにブレさせるか決める
execute store result score @s shotBlur run random value 0..1
#tp @s ~1 ~ ~

#アマスタの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#ブレさせる
#execute if score @s shotBlur matches 0 run tp @s ^1 ^ ^
#execute if score @s shotBlur matches 1 run tp @s ^-1 ^ ^

#計算
$scoreboard players operation @s shotX -= @p[level=$(num)] shotX
$scoreboard players operation @s shotY -= @p[level=$(num)] shotY
scoreboard players operation @s shotY -= 1600 num
$scoreboard players operation @s shotZ -= @p[level=$(num)] shotZ

#ブレ
#絶対値
scoreboard players operation @s tX = @s shotX
scoreboard players operation @s tZ = @s shotZ
execute if score @s shotX < 0 num run scoreboard players operation @s tX *= -1 num
execute if score @s shotZ < 0 num run scoreboard players operation @s tZ *= -1 num
$scoreboard players operation @s accuracy_ = @p[level=$(num)] accuracy
execute store result entity @s data.accuracy int 1 run scoreboard players get @s accuracy_
function core:weapons/shooters/random with entity @s data
scoreboard players operation @s accuracy_ -= @s accuracyRandom_

#ブレさせる
execute if score @s tX > @s tZ if score @s shotBlur matches 0 run scoreboard players operation @s shotZ += @s accuracy_
execute if score @s tX > @s tZ if score @s shotBlur matches 1 run scoreboard players operation @s shotZ -= @s accuracy_
execute if score @s tX < @s tZ if score @s shotBlur matches 0 run scoreboard players operation @s shotX += @s accuracy_
execute if score @s tX < @s tZ if score @s shotBlur matches 1 run scoreboard players operation @s shotX -= @s accuracy_

#Motionの値に計算結果を代入
$execute store result entity @s Motion[0] double $(Speed) run scoreboard players get @s shotX
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s shotY
$execute store result entity @s Motion[2] double $(Speed) run scoreboard players get @s shotZ