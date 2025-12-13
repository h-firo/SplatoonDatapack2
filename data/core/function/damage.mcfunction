#distanceを1/10して保存
$scoreboard players set @s damageData_ $(distance)
$execute store result storage damage_ $(owner).distance double 0.1 run scoreboard players get @s damageData_

#その他の値をストレージに保存
$data merge storage damage_ {$(owner):{damage:$(damage),objDamage:$(objDamage),objNum:$(objNum),num:$(num),team:$(team),volume:$(volume),owner:$(owner),type:$(type)}}
$function core:damages/distance with storage damage_ $(owner)