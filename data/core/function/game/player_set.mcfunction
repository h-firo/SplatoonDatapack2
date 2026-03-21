#ガイド
execute if entity @s[advancements={core:guide/action/shoot_auto=false}] run function core:guide/grant {category:action,name:shoot_auto}

#初期化
tag @a remove alreadyPlayerSet
scoreboard players set team1 playerSetCount 0
scoreboard players set team2 playerSetCount 0

#プレイヤー場所割り当て実行
function core:game/player_set/loop