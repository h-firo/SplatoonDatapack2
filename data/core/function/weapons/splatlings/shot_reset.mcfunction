scoreboard players set @s splatlingsDurationTime 0

#chargeを再設定
scoreboard players operation @s charge = @s chargeTo100
scoreboard players operation @s charge *= @s maxChargeValue
scoreboard players operation @s charge /= 100 num

title @s title {text:"oo\uE500",font:"ui",shadow_color:16777215}