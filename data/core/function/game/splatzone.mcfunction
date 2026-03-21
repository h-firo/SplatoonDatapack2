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
scoreboard players set @a isShootReady 0
scoreboard players set mode coreTime 1
scoreboard players set time gameTime 6000
scoreboard players set value gameRule 1
scoreboard players set @a ink 999

#ステージリセット
function stage:reset/colorblock_clear
execute if score value stage matches 0 run function stage:reset/eeltail_alley_area
execute if score value stage matches 1 run function stage:reset/barnacle_dime_area
execute if score value stage matches 2 run function stage:reset/inkblot_artacademy_area
execute if score value stage matches 3 run function stage:reset/mahimahi_resort_area
execute if score value stage matches 4 run function stage:reset/mincemeat_metalworks/area
scoreboard players set value areaOwner -1
scoreboard players set team1 areaCount 100
scoreboard players set team2 areaCount 100
scoreboard players set team1 areaLowestCount 100
scoreboard players set team2 areaLowestCount 100
scoreboard players set value areaCountTemp 100

#エリアの広さ
execute if score value stage matches 0 store result score all areaBlockCount run clone 5 -61 -199 36 -61 -185 5 -61 -199 filtered white_wool force
execute if score value stage matches 1 store result score all areaBlockCount run clone 158 -59 -122 173 -59 -113 158 -59 -122 filtered white_wool force
execute if score value stage matches 2 store result score all areaBlockCount run clone -13 -61 76 1 -61 92 -13 -61 76 filtered white_wool force
execute if score value stage matches 3 store result score all areaBlockCount run clone 188 -58 -307 197 -58 -296 188 -58 -307 filtered white_wool force
execute if score value stage matches 4 store result score all areaBlockCount run clone -193 -61 -4 -179 -61 6 -193 -61 -4 filtered white_wool force

#ガイド
execute if entity @s[advancements={core:guide/rule/splatzone=false}] run function core:guide/grant {category:rule,name:splatzone}

#プレイヤー番号付与
#function core:set_pnum

#ナワバリバトル表示
title @a times 5 200 20
title @a title {"text":"\uE300",font:"ui","shadow_color":16777215}

#ルール共通処理
function core:game/common_set