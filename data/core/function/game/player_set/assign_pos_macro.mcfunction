#カウント増加＆カウント保存
$scoreboard players add team$(team) playerSetCount 1
$execute store result storage core: psetCount int 1 run scoreboard players get team$(team) playerSetCount

#現在設定しているチームを保存
$data modify storage core: nowSet set value $(team)

#保存したstorageをマクロにして呼び出す
function core:game/player_set/run_posset with storage core: