#パーティクル
execute unless score @s isSprint matches 1 run particle firework ~ ~1 ~ 0.3 0.5 0.3 0.01 1 force @a[distance=1..]
execute if score @s isSprint matches 1 run particle end_rod ~ ~ ~ 0.3 0.3 0.3 0.05 1 force @a

#制限時間
scoreboard players remove @s coreTime 1
scoreboard players operation @s rainmakerTimerDisplay = @s coreTime
scoreboard players operation @s rainmakerTimerDisplay /= 20 num
execute if score @s coreTime matches ..0 run scoreboard players set @s health 0