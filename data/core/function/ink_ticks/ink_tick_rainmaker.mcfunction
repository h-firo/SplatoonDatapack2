#自分が通った場所の後ろ側に壁がある場合、壁に当たったとみなす（壁すり抜け対策）
#$execute if block ^ ^ ^2 #core:can_sticking run function core:ink_ticks/wallpaint {color:$(color)} 

execute if entity @s[team=!noCollision] run team join noCollision @s

#ダメージを持つ
$execute unless score @s damage matches 1.. run scoreboard players set @s damage $(damage)
$execute if score @s damage matches 1.. run scoreboard players remove @s damage $(damageAT)
execute store result entity @s data.atDamage int 1 run scoreboard players get @s damage

#オブジェクト紐づけを初期化
execute unless data entity @s data.objNum run data merge entity @s {data:{objNum:-1}}

#塗り
#地面
$fill ~-0.5 ~-5 ~-0.5 ~0.5 ~ ~0.5 $(color)_concrete replace #core:can_inking
#壁
$execute if block ~1 ~ ~ #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~ ~ ~1 #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~-1 ~ ~ #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~ ~ ~-1 #core:can_sticking run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking
#$execute if data entity @s {OnGround:true} run fill ~-2 ~-2 ~-2 ~2 ~4 ~2 $(color)_concrete replace #core:can_inking

$particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.1 0.1 0.1 0 10 force

#壁に当たった時の処理
execute if block ~1 ~ ~ #core:can_sticking run function core:weapons/rainmaker/explosion with entity @s data
execute if block ~ ~ ~1 #core:can_sticking run function core:weapons/rainmaker/explosion with entity @s data
execute if block ~-1 ~ ~ #core:can_sticking run function core:weapons/rainmaker/explosion with entity @s data
execute if block ~ ~ ~-1 #core:can_sticking run function core:weapons/rainmaker/explosion with entity @s data

#直接攻撃
function core:ink_damages/ink_damage_charger with entity @s data

execute if data entity @s {OnGround:true} run scoreboard players reset @s damage
execute if data entity @s {OnGround:true} run function core:weapons/rainmaker/explosion with entity @s data