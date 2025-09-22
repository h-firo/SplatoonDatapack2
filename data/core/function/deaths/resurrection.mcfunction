#復活
scoreboard players set @s health 100
scoreboard players set @s resurrectionTime -1
#アドベンチャーモードに
gamemode adventure @s

#スポナー＆射出
function core:game/shoot/ready with entity @s
function core:game/shoot/tp with entity @s