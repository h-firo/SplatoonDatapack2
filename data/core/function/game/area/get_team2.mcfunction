#team2がエリアを確保
scoreboard players set value areaOwner 2

#全面塗り
$execute if score value stage matches 0 run fill 5 -61 -199 36 -61 -185 $(team2)_concrete replace #core:concreate
$execute if score value stage matches 1 run fill 158 -59 -122 173 -59 -113 $(team2)_concrete replace #core:concreate
$execute if score value stage matches 2 run fill -13 -61 76 1 -61 92 $(team2)_concrete replace #core:concreate

#最新値更新
execute if score team1 areaCount < team1 areaLowestCount run scoreboard players operation team1 areaLowestCount = team1 areaCount

#ペナルティタイム
scoreboard players operation value areaCountTemp -= team1 areaCount
scoreboard players operation value areaCountTemp *= 75 num
scoreboard players operation value areaCountTemp /= 100 num
scoreboard players operation team1 areaCount += value areaCountTemp
scoreboard players operation value areaCountTemp = team2 areaCount

#音
execute as @a at @s if score @s team = team2 participationTeam run playsound block.copper_door.open master @s ~ ~ ~ 2 1
execute as @a at @s if score @s team = team1 participationTeam run playsound block.copper_door.close master @s ~ ~ ~ 2 1

#通知
$execute as @a if score @s team = team1 participationTeam run tellraw @s {"text":"ガチエリア確保された！",color:"$(text2)"}
$execute as @a if score @s team = team2 participationTeam run tellraw @s {"text":"ガチエリア確保した！",color:"$(text2)"}