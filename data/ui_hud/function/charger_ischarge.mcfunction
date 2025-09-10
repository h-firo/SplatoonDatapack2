#chargeDisplayの値をstorageに保存
$execute if data storage player: {$(XpLevel):{category:charger}} if score @s rightHold matches 1.. store result storage display_ $(XpLevel).charge int 1 run scoreboard players get @s chargeDisplay
$execute store result storage display_ $(XpLevel).SWBullet int 1 run scoreboard players get @s snipewriterBullet

#charger_chargeをstorage付きで実行
$execute if data storage player: {$(XpLevel):{category:charger}} if score @s rightHold matches 1.. if score @s chargeDisplay matches 10.. run function ui_hud:charger_charge with storage display_ $(XpLevel)
$execute if data storage player: {$(XpLevel):{category:charger}} if data storage shot_temp: {$(XpLevel):{name:"snipewriter"}} if score @s charged matches 1 run function ui_hud:snipewriter_set with storage display_ $(XpLevel)
$execute if data storage player: {$(XpLevel):{category:charger}} if score @s rightHold matches 1.. if score @s chargeDisplay matches ..9 run function ui_hud:charger_charge2 with storage display_ $(XpLevel)