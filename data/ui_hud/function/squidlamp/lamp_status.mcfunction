#voidマーク
$execute unless data storage squidlamps Active.$(setNum) run data modify storage squidlamp_text texts insert $(setNum) value "\uE50F"
#アクティブマーク
$execute if data storage squidlamps {Active:{$(setNum):"alive"}} if score num setLampNum matches ..3 run data modify storage squidlamp_text texts insert $(setNum) value "\uE50$(team1)"
$execute if data storage squidlamps {Active:{$(setNum):"alive"}} if score num setLampNum matches 4.. run data modify storage squidlamp_text texts insert $(setNum) value "\uE50$(team2)"
$execute if data storage squidlamps {Active:{$(setNum):"death"}} run data modify storage squidlamp_text texts insert $(setNum) value "\uE505"
scoreboard players add num setLampNum 1
execute if score num setLampNum matches 8.. run return fail
execute store result storage squidlamps setNum int 1 run scoreboard players get num setLampNum
function ui_hud:squidlamp/lamp_status with storage squidlamps