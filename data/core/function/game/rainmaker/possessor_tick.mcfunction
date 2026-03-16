#パーティクル
execute unless score @s isSprint matches 1 run particle firework ~ ~1 ~ 0.3 0.5 0.3 0.01 1 force @a[distance=1..]
execute if score @s isSprint matches 1 run particle end_rod ~ ~ ~ 0.3 0.3 0.3 0.05 1 force @a

#制限時間
scoreboard players remove @s coreTime 1
scoreboard players operation @s rainmakerTimerDisplay = @s coreTime
scoreboard players operation @s rainmakerTimerDisplay /= 20 num
execute if score @s coreTime matches ..0 run scoreboard players set @s health 0

#距離計算
#プレイヤーからゴールまでの距離:dx^2+dy^2+dz^2\
100で正規化:(dx^2+dy^2+dz^2)*100\
基準距離での割合を計算:((dx^2+dy^2+dz^2)*100) / R^2 (R=基準距離、スタート→ゴールまでの距離^2)\
カウント:100 - ((dx^2+dy^2+dz^2)*100) / R^2
execute store result score px rainmakerGoalPos run data get entity @s Pos[0]
execute store result score py rainmakerGoalPos run data get entity @s Pos[1]
execute store result score pz rainmakerGoalPos run data get entity @s Pos[2]

scoreboard players operation dx rainmakerGoalPos = px rainmakerGoalPos
scoreboard players operation dy rainmakerGoalPos = py rainmakerGoalPos
scoreboard players operation dz rainmakerGoalPos = pz rainmakerGoalPos

scoreboard players operation dx rainmakerGoalPos -= gx rainmakerGoalPos
scoreboard players operation dy rainmakerGoalPos -= gy rainmakerGoalPos
scoreboard players operation dz rainmakerGoalPos -= gz rainmakerGoalPos

scoreboard players operation dx rainmakerGoalPos *= dx rainmakerGoalPos
scoreboard players operation dy rainmakerGoalPos *= dy rainmakerGoalPos
scoreboard players operation dz rainmakerGoalPos *= dz rainmakerGoalPos

scoreboard players operation dist rainmakerGoalPos = dx rainmakerGoalPos
scoreboard players operation dist rainmakerGoalPos += dy rainmakerGoalPos
scoreboard players operation dist rainmakerGoalPos += dz rainmakerGoalPos

scoreboard players operation dist rainmakerGoalPos *= 100 num
scoreboard players operation dist rainmakerGoalPos /= value rainmakerZeroDistance

execute if score @s team = team1 participationTeam run function core:game/rainmaker/apply_count {team:1}
execute if score @s team = team2 participationTeam run function core:game/rainmaker/apply_count {team:2}