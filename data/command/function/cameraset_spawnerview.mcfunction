#スポナー全体視点カメラセット
$summon armor_stand ~ ~ ~ {Tags:["spawnerView$(stage)_$(num)","spawnerViews$(stage)"],Invisible:true,Silent:true,Marker:true}

$tellraw @a[tag=operator] {"text":"スポーン全体カメラ(番号:$(num))をセットしました"}