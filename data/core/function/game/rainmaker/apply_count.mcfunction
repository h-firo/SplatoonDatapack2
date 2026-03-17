$scoreboard players operation team$(team) areaCount = dist rainmakerGoalPos

#0~100(チェックポイント未到達時はチェックポイントの数)にする
$execute if score team$(team) areaCount matches ..0 run scoreboard players set team$(team) areaCount 1
$execute unless score team$(team) checkPoint matches 1 if score team$(team) areaCount <= maxCount checkPoint run \
return run scoreboard players operation team$(team) areaCount = maxCount checkPoint
$execute if score team$(team) areaCount matches 100.. run scoreboard players set team$(team) areaCount 100