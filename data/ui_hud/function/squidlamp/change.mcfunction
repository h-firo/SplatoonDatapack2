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

#ルールによって処理を変える
#レギュラーマッチなら、イカランプのみ
execute if score value gameRule matches 0 run return run function ui_hud:squidlamp/change_regular
#ガチマッチなら、カウント表示
execute if score value gameRule matches 1 store result storage squidlamps ruleCount1 int 1 run scoreboard players get team1 areaCount
execute if score value gameRule matches 1 store result storage squidlamps ruleCount2 int 1 run scoreboard players get team2 areaCount
execute if score value gameRule matches 1 if score sec gameTime >= 10 num run return run function ui_hud:squidlamp/change_count/sec_greater/out
execute if score value gameRule matches 1 run function ui_hud:squidlamp/change_count/sec_less/out