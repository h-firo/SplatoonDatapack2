#出場チーム(色)
execute store result score team1 participationTeam run random value 0..4
execute store result score team2 participationTeam run random value 0..4
execute if score team1 participationTeam = team2 participationTeam store result score team2 participationTeam run random value 0..4
execute store result storage core: team1 int 1 run scoreboard players get team1 participationTeam
execute store result storage core: team2 int 1 run scoreboard players get team2 participationTeam

#スコアセット
scoreboard players set is isGame 1
scoreboard players set is isJudge 0
scoreboard players set time coreTime 0
scoreboard players set @s isShootReady 0
scoreboard players set mode coreTime 1
scoreboard players set time gameTime 1200

#ステージリセット
function stage:reset/colorblock_clear
execute if score value stage matches 0 run function stage:reset/eeltail_alley

#プレイヤー番号付与
function core:set_pnum

#ナワバリバトル表示
title @a times 5 200 20
title @a title {"text":"\uE300",font:"ui","shadow_color":16777215}

#チーム割り当て
function core:game/set_team

#登場色割り当て
function core:game/assign_color with storage core:

#イカランプ紐づけ
data remove storage squidlamps Active
scoreboard players set team1 linkLampNum 0
scoreboard players set team2 linkLampNum 4
tag @a remove alReadyLinkLamp
function core:squidlamps/link_lamp

#ステージごとに異なる場所に
execute store result storage core: stage int 1 run scoreboard players get value stage
function core:game/stage_view with storage core: