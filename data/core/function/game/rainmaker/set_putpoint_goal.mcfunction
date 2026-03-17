#ガチホコの設置場所
$execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["rainmakerPutPoint"],data:{Type:"Goal",Team:$(team)}}

#ゴールの座標を保存
execute as @n[type=marker,tag=rainmakerPutPoint,distance=..1] store result score gx rainmakerGoalPos run data get entity @s Pos[0]
execute as @n[type=marker,tag=rainmakerPutPoint,distance=..1] store result score gy rainmakerGoalPos run data get entity @s Pos[1]
execute as @n[type=marker,tag=rainmakerPutPoint,distance=..1] store result score gz rainmakerGoalPos run data get entity @s Pos[2]