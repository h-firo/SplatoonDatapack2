#スポナー位置にテレポート
$execute at @n[type=armor_stand,tag=spawnerPos$(XpLevel)] run tp @s ~ ~ ~
#$execute unless entity @n[type=armor_stand,tag=spawnerPos$(XpLevel),distance=..3] run return run function core:game/shoot/tp with entity @s
rotate @s ~180 ~

#射出用エンティティを召喚
$summon item_display ~ ~ ~ {Tags:["spawnerRide$(XpLevel)","spawnerRides"],teleport_duration:1,data:{owner:$(XpLevel)}}

#射出用エンティティにライド
$ride @s mount @n[type=item_display,tag=spawnerRide$(XpLevel)]

$execute as @n[tag=spawnerRide$(XpLevel)] at @s run tp @s @n[type=armor_stand,tag=spawnerPos$(XpLevel)]