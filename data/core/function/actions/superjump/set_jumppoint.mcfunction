#ビーコンをジャンプ先に選択していたら
execute unless data entity @s Thrower run return fail
execute if data entity @s Item.components.minecraft:custom_data.id run return run \
function core:actions/superjump/set_jumppoint_beakon with entity @s Item.components.minecraft:custom_data

#プレイヤーをジャンプ先に選択していたら
function core:actions/superjump/set_jumppoint_player with entity @s Item.components.minecraft:custom_data