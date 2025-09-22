#スポナー位置にテレポート
$tp @s @n[type=armor_stand,tag=spawnerPos$(XpLevel)]
rotate @s ~180 ~

#射出用エンティティを召喚
$summon item_display ~ ~ ~ {Tags:["spawnerRide$(XpLevel)","spawnerRides"],teleport_duration:1,data:{owner:$(XpLevel)}}

#射出用エンティティにライド
$ride @s mount @n[type=item_display,tag=spawnerRide$(XpLevel)]