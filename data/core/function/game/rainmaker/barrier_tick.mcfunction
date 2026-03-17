#トータルダメージ計算
scoreboard players operation total BarrierDamage = team1 BarrierDamage
scoreboard players operation total BarrierDamage -= team2 BarrierDamage
#値が負の場合は正にする
execute if score total BarrierDamage matches ..0 run scoreboard players operation total BarrierDamage *= -1 num

#色変え
$execute if score team1 BarrierDamage > team2 BarrierDamage run \
data merge entity @s {item:{id:"minecraft:diamond",count:1,components:{"item_model":rainmaker_effect,"custom_model_data":{strings:["$(team1)"]}}}}

$execute if score team2 BarrierDamage > team1 BarrierDamage run \
data merge entity @s {item:{id:"minecraft:diamond",count:1,components:{"item_model":rainmaker_effect,"custom_model_data":{strings:["$(team2)"]}}}}

#ダメージトータルが一定以上なら爆発
execute unless score total BarrierDamage matches 1000.. run return fail

#shotNumの増加
scoreboard players add num shotNum 1
data remove storage temp_ args
execute store result storage temp_ args.shotNum int 1 run scoreboard players get @s shotNum
execute if score team1 BarrierDamage > team2 BarrierDamage store result storage temp_ args.team int 1 run scoreboard players get team1 participationTeam
execute if score team2 BarrierDamage > team1 BarrierDamage store result storage temp_ args.team int 1 run scoreboard players get team2 participationTeam
$execute if score team1 BarrierDamage > team2 BarrierDamage store result storage temp_ args.team int 1 run data merge storage temp_ {args:{color:$(team1)}}
$execute if score team2 BarrierDamage > team1 BarrierDamage store result storage temp_ args.team int 1 run data merge storage temp_ {args:{color:$(team2)}}
execute store result storage temp_ args.num int 1 run scoreboard players get player barrierFinalAttacked

#爆発
function core:specialweapons/reefslider/explosion/set with storage temp_ args

#演出
playsound entity.generic.explode master @a ~ ~ ~ 1 1
$execute if score team1 BarrierDamage > team2 BarrierDamage run function core:subweapons/particle/set {radius:5,color:$(team1)}
$execute if score team2 BarrierDamage > team1 BarrierDamage run function core:subweapons/particle/set {radius:5,color:$(team2)}

kill @n[type=shulker,tag=rainmarkerBarrierCollider]
kill @s