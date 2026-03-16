execute if score isWaterLevelDrop stageGimmick matches 1 run return fail
execute if score value gameRule matches 0 if score time gameTime matches 1800 run return run function stage:gimmick/waterleveldrop
execute if score value gameRule matches 1 if score team1 areaCount matches 60 run return run function stage:gimmick/waterleveldrop
execute if score value gameRule matches 1 if score team2 areaCount matches 60 run return run function stage:gimmick/waterleveldrop