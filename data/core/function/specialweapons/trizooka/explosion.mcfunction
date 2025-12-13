#爆発
particle explosion ~ ~ ~ 0 0 0 0 1
function core:subweapons/splashbomb/explosion with entity @s data
execute positioned ~ ~0.5 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~1 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~1.5 ~ run function core:subweapons/splashbomb/particle with entity @s data
execute positioned ~ ~2 ~ run function core:subweapons/splashbomb/particle with entity @s data

#ダメージ処理
$function core:damage {distance:20,num:$(shotNum),team:$(team),damage:220,objDamage:1320,volume:1,owner:$(owner),objNum:$(objNum),type:"trizooka"}
$function core:damage {distance:25,num:$(shotNum),team:$(team),damage:53,objDamage:318,volume:1,owner:$(owner),objNum:$(objNum),type:"trizooka"}