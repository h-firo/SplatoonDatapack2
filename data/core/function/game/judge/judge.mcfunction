scoreboard players set is isJudge 1
scoreboard players set time coreTime 0
scoreboard players set team1 blockCountDisplay 0
scoreboard players set team2 blockCountDisplay 0
execute if score value stage matches 0 run function core:game/judge/count_percentage/stage0 with storage core: joinColor
execute if score value stage matches 1 run function core:game/judge/count_percentage/stage1 with storage core: joinColor