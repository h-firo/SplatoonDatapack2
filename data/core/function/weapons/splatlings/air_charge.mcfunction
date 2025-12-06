#空中チャージ
scoreboard players add @s airCharge 1
execute if score @s airCharge >= @s maxAirCharge run scoreboard players add @s charge 1
execute if score @s airCharge >= @s maxAirCharge run scoreboard players set @s airCharge 0
execute if score @s charge > @s maxChargeValue run scoreboard players operation @s charge = @s maxChargeValue

#表示
function core:weapons/chargers/charge_display