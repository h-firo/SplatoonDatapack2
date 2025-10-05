#ブロック数カウント
$execute if score value stage matches 0 store result score team1 areaBlockCount run clone 5 -61 -199 36 -61 -185 5 -61 -199 filtered $(team1)_concrete force
$execute if score value stage matches 0 store result score team2 areaBlockCount run clone 5 -61 -199 36 -61 -185 5 -61 -199 filtered $(team2)_concrete force
$execute if score value stage matches 1 store result score team1 areaBlockCount run clone 158 -59 -122 173 -59 -113 158 -59 -122 filtered $(team1)_concrete force
$execute if score value stage matches 1 store result score team2 areaBlockCount run clone 158 -59 -122 173 -59 -113 158 -59 -122 filtered $(team2)_concrete force
$execute if score value stage matches 2 store result score team1 areaBlockCount run clone -13 -61 76 1 -61 92 -13 -61 76 filtered $(team1)_concrete force
$execute if score value stage matches 2 store result score team2 areaBlockCount run clone -13 -61 76 1 -61 92 -13 -61 76 filtered $(team2)_concrete force

#割合
scoreboard players operation team1 areaBlockCount *= 100 num
scoreboard players operation team2 areaBlockCount *= 100 num
scoreboard players operation team1 areaBlockCount /= all areaBlockCount
scoreboard players operation team2 areaBlockCount /= all areaBlockCount

#オーナー替え
#誰もエリアをとっていないとき
execute if score value areaOwner matches -1 if score team1 areaBlockCount matches 50.. run function core:game/area/get_team1 with storage core: joinColor
execute if score value areaOwner matches -1 if score team2 areaBlockCount matches 50.. run function core:game/area/get_team2 with storage core: joinColor
#誰かがエリアをとっているとき、カウントストップ
execute unless score value areaOwner matches -1 unless score value areaOwner matches 0 if score team1 areaBlockCount matches 50..79 run function core:game/area/stop
execute unless score value areaOwner matches -1 unless score value areaOwner matches 0 if score team2 areaBlockCount matches 50..79 run function core:game/area/stop
#エリアストップ時、どちらかが8割とっていたらオーナー変更
execute if score value areaOwner matches 0 if score team1 areaBlockCount matches 80.. run function core:game/area/get_team1 with storage core: joinColor
execute if score value areaOwner matches 0 if score team2 areaBlockCount matches 80.. run function core:game/area/get_team2 with storage core: joinColor

#カウントダウン
scoreboard players add time areaCountDownTimer 1
execute if score time areaCountDownTimer matches ..12 run return fail
scoreboard players set time areaCountDownTimer 0
execute if score value areaOwner matches 1 run scoreboard players remove team1 areaCount 1
execute if score value areaOwner matches 2 run scoreboard players remove team2 areaCount 1
#カウントが0になっていたら終了
execute if score team1 areaCount matches ..0 run function core:game/area/judge/judge
execute if score team2 areaCount matches ..0 run function core:game/area/judge/judge
execute if score team1 areaCount matches ..0 run function core:game/end
execute if score team2 areaCount matches ..0 run function core:game/end