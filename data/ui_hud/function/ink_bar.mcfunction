#ホコを持っているときはインクタンクを表示しない
execute if items entity @s hotbar.0 emerald[item_model="rainmaker"] run return run function ui_hud:rainmaker

#インク残量がないときはそれを表示
execute if score @s inkShort matches 1.. run return run function ui_hud:inkshort

$execute if score @s ink matches 100.. run function ui_hud:inkbar_change with storage player: $(XpLevel)
$execute if score @s ink matches ..99 run function ui_hud:inkbar_change2 with storage player: $(XpLevel)