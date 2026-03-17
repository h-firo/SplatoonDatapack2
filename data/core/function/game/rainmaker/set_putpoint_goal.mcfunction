#ガチホコの設置場所
$execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["rainmakerPutPoint"],data:{Type:"Goal",Team:$(team)}}

#ゴールの座標を保存
execute as @n[type=marker,tag=rainmakerPutPoint,distance=..1] store result score gx rainmakerGoalPos run data get entity @s Pos[0]
execute as @n[type=marker,tag=rainmakerPutPoint,distance=..1] store result score gy rainmakerGoalPos run data get entity @s Pos[1]
execute as @n[type=marker,tag=rainmakerPutPoint,distance=..1] store result score gz rainmakerGoalPos run data get entity @s Pos[2]

#周辺の白羊毛の色を変える
data remove storage temp_ args
$data modify storage temp_ args.color set from storage core: joinColor.team$(team)
function core:game/rainmaker/change_woolcolor with storage temp_ args