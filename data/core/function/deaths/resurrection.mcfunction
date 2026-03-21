#復活
scoreboard players set @s health 100
scoreboard players set @s ink 999
scoreboard players set @s resurrectionTime -1
scoreboard players set @s isSayDeathMessage 0
#アドベンチャーモードに
gamemode adventure @s

#スポナー＆射出
execute if entity @s[advancements={core:guide/action/shoot_manual=false}] run function core:guide/grant {category:action,name:shoot_manual}
execute unless score is isGame matches 1 run return run tp @s -81 -60 -168
function core:game/shoot/ready with entity @s
function core:game/shoot/tp with entity @s