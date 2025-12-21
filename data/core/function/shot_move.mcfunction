#チャージャー:チャージキープ
$execute if score @s rightHold matches 1.. if predicate core:is_sneaking if score @s chargeKeepTime matches -1 run \
function core:set_chargekeeptime with storage shot_temp: $(XpLevel)