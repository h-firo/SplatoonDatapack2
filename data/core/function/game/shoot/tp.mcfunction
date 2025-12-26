#スポナー位置にテレポート
$execute at @n[type=armor_stand,tag=spawnerPos$(XpLevel)] run tp @s ~ ~ ~
#$execute unless entity @n[type=armor_stand,tag=spawnerPos$(XpLevel),distance=..3] run return run function core:game/shoot/tp with entity @s
rotate @s ~180 ~

#射出用エンティティを召喚
$summon item_display ~ ~ ~ {Tags:["spawnerRide$(XpLevel)","spawnerRides"],teleport_duration:1,data:{owner:$(XpLevel)}}

#射出用エンティティにライド
scoreboard players set @s viewer 3
$ride @s mount @n[type=item_display,tag=spawnerRide$(XpLevel)]

$execute as @n[tag=spawnerRide$(XpLevel)] at @s run tp @s @n[type=armor_stand,tag=spawnerPos$(XpLevel)]
execute if score @s team = team1 participationTeam run rotate @s 180 0
execute if score @s team = team2 participationTeam run rotate @s 0 0