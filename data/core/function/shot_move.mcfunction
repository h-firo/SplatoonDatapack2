#共通
$execute unless data storage player: {$(num):{category:roller}} if score @s rightHold matches 1.. run attribute @s movement_speed modifier add shot_move $(HSpeed) add_value

#ローラー:塗り進み
$execute if data storage player: {$(num):{category:roller}} run function core:weapons/rollers/rolling_move with storage shot_temp: $(num)

#チャージャー:チャージキープ
$execute if data storage player: {$(num):{category:charger}} if score @s rightHold matches 1.. if predicate core:is_sneaking if score @s chargeKeepTime matches -1 run \
function core:set_chargekeeptime with storage shot_temp: $(num)