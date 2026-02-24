#chargeを再設定
scoreboard players operation @s charge = @s chargeTo100
scoreboard players operation @s charge *= @s maxChargeValue
scoreboard players operation @s charge /= 100 num