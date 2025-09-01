#各プレイヤーのスポーン位置を保存
$summon armor_stand ~ ~ ~ {Tags:["spawnerPos$(XpLevel)","spawners"],Invisible:true,Marker:false,NoGravity:true}
$execute store result entity @n[tag=spawnerPos$(XpLevel)] Rotation[0] int 1 run scoreboard players get @p[level=$(XpLevel)] spanwerRotate