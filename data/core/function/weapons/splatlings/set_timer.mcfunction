$scoreboard players set @s splatlingsDurationTime $(Duration)
$scoreboard players set @s maxChargeValue $(Duration)
scoreboard players operation @s splatlingsDurationTime *= @s chargeTo100
scoreboard players operation @s splatlingsDurationTime /= 100 num