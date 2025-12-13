$particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.1 0.1 0.1 0 10 force

#塗り
$execute if block ~1 ~ ~ #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~ ~ ~1 #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~-1 ~ ~ #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~ ~ ~-1 #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if data entity @s {OnGround:true} run fill ~-2 ~-2 ~-2 ~2 ~4 ~2 $(color)_concrete replace #core:can_inking

#オブジェクト紐づけを初期化
execute unless data entity @s data.objNum run data merge entity @s {data:{objNum:-1}}

#新ダメージ処理
$function core:damage {distance:15,num:$(shotNum),team:$(team),damage:50,objDamage:120,volume:1,objNum:$(objNum),owner:$(owner),type:"crabtank_exp"}
$function core:damage {distance:25,num:$(shotNum),team:$(team),damage:30,objDamage:50,volume:1,objNum:$(objNum),owner:$(owner),type:"crabtank_exp"}

#削除処理
execute if block ~1 ~ ~ #core:can_sticking run kill @s
execute if block ~ ~ ~1 #core:can_sticking run kill @s
execute if block ~-1 ~ ~ #core:can_sticking run kill @s
execute if block ~ ~ ~-1 #core:can_sticking run kill @s

execute if data entity @s {OnGround:true} run scoreboard players reset @s damage
execute if data entity @s {OnGround:true} run function core:specialweapons/crabtank/explosion with entity @s data
execute if data entity @s {OnGround:true} run kill @s