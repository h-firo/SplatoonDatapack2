#チャージ時間あたりのチャージゲージ変化量を計算
$scoreboard players set @s maxChargeValue $(ChargeTime)
$scoreboard players set @s maxAirCharge $(AirCharge)

execute if predicate core:else_onground run return run function core:weapons/chargers/air_charge
scoreboard players set @s airCharge 0

#チャージ
scoreboard players add @s charge 1
execute if score @s charge > @s maxChargeValue run scoreboard players operation @s charge = @s maxChargeValue

#表示
function core:weapons/chargers/charge_display