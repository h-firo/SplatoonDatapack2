scoreboard players set @s maxChargeValue 20

#チャージ
scoreboard players add @s charge 1
execute if score @s charge > @s maxChargeValue run scoreboard players operation @s charge = @s maxChargeValue

#演出
function core:weapons/rainmaker/charge_effect

#チャージ音
$execute if score @s charge = @s maxChargeValue unless score @s charged matches 1 run function core:weapons/rainmaker/charge_ready with storage dustcolor: $(team)

#チャージ済みにする
execute if score @s charge = @s maxChargeValue unless score @s charged matches 1 run scoreboard players set @s charged 1