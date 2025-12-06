#UI&HUDの描画処理
execute as @a run function ui_hud:ink_bar with entity @s
execute as @a run function ui_hud:charger_ischarge with entity @s
execute as @a run function ui_hud:splatlings with entity @s

#イカランプ
function ui_hud:squidlamp/change