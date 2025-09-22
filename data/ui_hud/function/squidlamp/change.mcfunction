#プレイヤーの状態を取得し、イカランプに反映
data modify storage squidlamp_text texts set value []
scoreboard players set num setLampNum 0
execute store result storage squidlamps setNum int 1 run scoreboard players get num setLampNum
execute store result storage squidlamps team1 int 1 run scoreboard players get team1 participationTeam
execute store result storage squidlamps team2 int 1 run scoreboard players get team2 participationTeam
function ui_hud:squidlamp/lamp_status with storage squidlamps

#スペースとタイマー背景を追加
data modify storage squidlamp_text texts insert 0 value "\uEB00"
data modify storage squidlamp_text texts insert 2 value "\uEA03"
data modify storage squidlamp_text texts insert 4 value "\uEA03"
data modify storage squidlamp_text texts insert 6 value "\uEA03"
data modify storage squidlamp_text texts insert 8 value "\uEA03"
data modify storage squidlamp_text texts insert 9 value "\uE50A"
data modify storage squidlamp_text texts insert 10 value "\uEA03"
data modify storage squidlamp_text texts insert 12 value "\uEA03"
data modify storage squidlamp_text texts insert 14 value "\uEA03"
#data modify storage squidlamp_text texts insert 16 value "\uEA03"

#配列内に入っている文字結合
data modify storage concat: result set value []
data modify storage concat: args set from storage squidlamp_text texts
function concat:concat_all

bossbar set minecraft:squidlamp name [{storage:"concat:",nbt:"result","shadow_color":16777215},{"text":"q","color":"white","shadow_color":16777215,"font":"num"},{"score":{name:"value",objective:"min"},"shadow_color":16777215,"font":"num"},{"text":":","color":"white","shadow_color":16777215,"font":"num"},{"score":{name:"value",objective:"sec"},"shadow_color":16777215,"font":"num"}]