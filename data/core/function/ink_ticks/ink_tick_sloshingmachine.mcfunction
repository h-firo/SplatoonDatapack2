#自分が通った場所の後ろ側に壁がある場合、壁に当たったとみなす（壁すり抜け対策）
#$execute if block ^ ^ ^2 #core:can_sticking run function core:ink_ticks/wallpaint {color:$(color)} 

execute if entity @s[team=!noCollision] run team join noCollision @s

#ダメージを持つ
$execute unless score @s damage matches 1.. run scoreboard players set @s damage $(damage)
$execute if score @s damage matches 1.. run scoreboard players remove @s damage $(damageAT)
execute store result entity @s data.atDamage int 1 run scoreboard players get @s damage

#オブジェクト紐づけを初期化
execute unless data entity @s data.objNum run data merge entity @s {data:{objNum:-1}}

#スペシャルポイント処理
$function core:actions/add_specialpoint {fx:-0.3,fy:-5,fz:-0.3,tx:0.3,ty:0,tz:0.3,color:"$(color)",owner:$(owner)}

#塗り
$fill ~-0.5 ~-5 ~-0.5 ~0.5 ~ ~0.5 $(color)_concrete replace #core:can_inking
$execute if data entity @s {OnGround:true} if data entity @s {data:{invisible:false}} run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking

$execute if data entity @s {data:{invisible:false}} run particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.3 0.1 0.3 0 10 force

#渦巻表示
scoreboard players add @s swirl 1
execute if score @s swirl matches 2.. if data entity @s {data:{invisible:false}} run summon item_display ~ ~ ~ {Tags:["swirl"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},interpolation_duration:6,\
item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"swirlink",custom_model_data:{strings:["yellow"]}}}}
rotate @n[type=item_display,tag=swirl] ~ ~
execute rotated as @n[type=item_display,tag=swirl] run rotate @n[type=item_display,tag=swirl] ~180 ~-60

#攻撃
function core:ink_damages/ink_damage_swirl with entity @s data

execute if data entity @s {OnGround:true} run scoreboard players reset @s damage
execute if data entity @s {OnGround:true} run kill @s