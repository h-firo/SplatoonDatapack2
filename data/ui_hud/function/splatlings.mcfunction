#chargeDisplayの値をstorageに保存
$execute if data storage player: {$(XpLevel):{category:splatlings}} if score @s rightHold matches 1.. store result storage display_ $(XpLevel).charge int 1 run scoreboard players get @s chargeDisplay

#charger_chargeをstorage付きで実行
$execute if data storage player: {$(XpLevel):{category:splatlings}} if score @s rightHold matches 1.. if score @s chargeDisplay matches 10.. run function ui_hud:charger_charge with storage display_ $(XpLevel)
$execute if data storage player: {$(XpLevel):{category:splatlings}} if score @s rightHold matches 1.. if score @s chargeDisplay matches ..9 run function ui_hud:charger_charge2 with storage display_ $(XpLevel)

#射撃時間に応じて表示 
$execute if data storage player: {$(XpLevel):{category:splatlings}} if score @s splatlingsDurationTime matches 1.. store result storage display_ $(XpLevel).charge int 1 run scoreboard players get @s chargeDisplay
$execute if data storage player: {$(XpLevel):{category:splatlings}} if score @s splatlingsDurationTime matches 1.. if score @s chargeDisplay matches 10.. run function ui_hud:charger_charge with storage display_ $(XpLevel)
$execute if data storage player: {$(XpLevel):{category:splatlings}} if score @s splatlingsDurationTime matches 1.. if score @s chargeDisplay matches ..9 run function ui_hud:charger_charge2 with storage display_ $(XpLevel)