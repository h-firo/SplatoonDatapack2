#ゲームモード
gamemode adventure @a

#スポナー位置に移動
$say $(XpLevel)
$tp @s @n[type=armor_stand,tag=spawnerPos$(XpLevel)]
rotate @s ~ ~

#ライド用itemDisplay表示
#$summon item_display ~ ~ ~ {Tags:["spawnerRide$(XpLevel)","spawnerRides"],teleport_duration:1,data:{owner:$(XpLevel)}}

#ライド
kill @e[tag=playerAvator]
#$ride @s mount @n[type=item_display,tag=spawnerRide$(XpLevel)]