#出場チーム(色)
execute store result score team1 participationTeam run random value 0..4
execute store result score team2 participationTeam run random value 0..4
execute if score team1 participationTeam = team2 participationTeam store result score team2 participationTeam run random value 0..4
execute store result storage core: team1 int 1 run scoreboard players get team1 participationTeam
execute store result storage core: team2 int 1 run scoreboard players get team2 participationTeam

#登場色割り当て
function core:game/assign_color with storage core:

#スコアセット
scoreboard players set is isGame 1
scoreboard players set is isJudge 0
scoreboard players set time coreTime 0
scoreboard players set @s isShootReady 0
scoreboard players set mode coreTime 1
scoreboard players set time gameTime 6000
scoreboard players set value gameRule 2
scoreboard players set @a ink 999

#ステージリセット
function stage:reset/colorblock_clear
execute if score value stage matches 0 run function stage:reset/eeltail_alley_rainmaker
execute if score value stage matches 1 run function stage:reset/barnacle_dime_rainmaker
execute if score value stage matches 2 run function stage:reset/inkblot_artacademy_rainmaker
execute if score value stage matches 3 run function stage:reset/mahimahi_resort_rainmaker
execute if score value stage matches 4 run function stage:reset/mincemeat_metalworks/rainmaker
scoreboard players set team1 areaCount 100
scoreboard players set team2 areaCount 100

#カンモン位置設定
kill @e[type=marker,tag=rainmakerPutPoint]
function core:game/rainmaker/setup with storage core:
execute if score value stage matches 0 run scoreboard players set value rainmakerZeroDistance 1521
execute if score value stage matches 1 run scoreboard players set value rainmakerZeroDistance 1225
execute if score value stage matches 2 run scoreboard players set value rainmakerZeroDistance 484
execute if score value stage matches 3 run scoreboard players set value rainmakerZeroDistance 2000
execute if score value stage matches 4 run scoreboard players set value rainmakerZeroDistance 1156

#プレイヤー番号付与
#function core:set_pnum

#ナワバリバトル表示
title @a times 5 200 20
title @a title {"text":"\uE300",font:"ui","shadow_color":16777215}

#ルール共通処理
function core:game/common_set