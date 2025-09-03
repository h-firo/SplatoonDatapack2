#ゲームモード
gamemode adventure @a

#スポナー位置に移動
$tp @s @n[type=armor_stand,tag=spawnerPos$(XpLevel)]

#ライド用itemDisplay表示
$summon item_display ~ ~ ~ {Tags:["spawnerRide$(XpLevel)","spawnerRides"],teleport_duration:15}

$kill @n[type=armor_stand,tag=spawnerPos$(XpLevel)]