#自分が通った場所の後ろ側に壁がある場合、壁に当たったとみなす（壁すり抜け対策）
#$execute if block ^ ^ ^1 #core:can_sticking run function core:ink_ticks/wallpaint {color:$(color)} 
#$execute if block ^ ^ ^2 #core:can_sticking run function core:ink_ticks/wallpaint {color:$(color)} 

#オブジェクト紐づけを初期化
execute unless data entity @s data.objNum run data merge entity @s {data:{objNum:-1}}

#ダメージを持つ
$execute unless score @s damage matches 1.. run scoreboard players set @s damage $(damage)
$execute if score @s damage matches 1.. run scoreboard players remove @s damage $(damageAT)
execute store result entity @s data.atDamage int 1 run scoreboard players get @s damage

#スペシャルポイント処理
$function core:actions/add_specialpoint {fx:-0.3,fy:-5,fz:-0.3,tx:0.3,ty:0,tz:0.3,color:"$(color)",owner:$(owner)}

#塗り
$fill ~-0.3 ~-5 ~-0.3 ~0.3 ~ ~0.3 $(color)_concrete replace #core:can_inking
$particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.1 0.1 0.1 0 3 force
$execute if data entity @s {OnGround:true} run function core:actions/add_specialpoint {fx:-1,fy:-1,fz:-1,tx:1,ty:2,tz:1,color:"$(color)",owner:$(owner)}
$execute if data entity @s {OnGround:true} run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking

#攻撃
function core:ink_damages/ink_damage_general with entity @s data

#貫通しないようにする
$execute if entity @e[tag=player,scores={lastHit=$(shotNum)}] unless data entity @s {data:{isPenetrate:true}} run kill @s

scoreboard players add @s chargerLiveTime 1
execute if score @s chargerLiveTime matches 5.. run kill @s

execute if data entity @s {OnGround:true} run kill @s