#offset(dx,dy,dzでずらす距離)とshift(もう一つのdx,dy,dz判定をするための、offsetからのずらし)を計算・代入
$scoreboard players set @s damageData_ $(distance)
$execute if score @s damageData_ matches 10.. run return run function core:bigrange_damage/macro {num:$(num),team:$(team),damage:$(damage),objDamage:$(objDamage),volume:1,objNum:$(objNum),owner:$(owner)}
$execute store result storage damage_ $(owner).offset double -0.05 run scoreboard players get @s damageData_
scoreboard players operation @s damageData_ -= 10 num
$execute store result storage damage_ $(owner).shift double 0.1 run scoreboard players get @s damageData_

#その他の値をストレージに保存
$data merge storage damage_ {$(owner):{damage:$(damage),objDamage:$(objDamage),objNum:$(objNum),num:$(num),team:$(team),volume:$(volume),owner:$(owner)}}
$function core:damages/aabb with storage damage_ $(owner)