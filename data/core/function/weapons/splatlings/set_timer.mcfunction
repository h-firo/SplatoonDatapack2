$scoreboard players set @s splatlingsDurationTime $(Duration)
$scoreboard players set @s maxChargeValue $(Duration)
scoreboard players operation @s splatlingsDurationTime *= @s chargeTo100
scoreboard players operation @s splatlingsDurationTime /= 100 num

#クーゲルシュライバーならモード変化時間を設定
execute unless items entity @s weapon.mainhand *[item_model="ballpointsplatling"] run return fail
execute unless function core:weapons/splatlings/ballpointsplatling/can_change run return run scoreboard players operation @s _sdt = @s splatlingsDurationTime
scoreboard players operation @s _sdt = @s splatlingsDurationTime
scoreboard players operation @s changeModeTime = @s splatlingsDurationTime
scoreboard players operation @s changeModeTime -= 10 num