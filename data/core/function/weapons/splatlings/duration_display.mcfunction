#百分率に変換
scoreboard players operation @s chargeTo100 = @s splatlingsDurationTime
scoreboard players operation @s chargeTo100 *= 100 num
scoreboard players operation @s chargeTo100 /= @s maxChargeValue

#表示用変換（100分率→48分率）
scoreboard players operation @s chargeDisplay = @s chargeTo100
scoreboard players operation @s chargeDisplay *= 48 num
scoreboard players operation @s chargeDisplay /= 100 num