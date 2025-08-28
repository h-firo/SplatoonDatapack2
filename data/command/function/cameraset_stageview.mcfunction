#俯瞰視点カメラセット
$summon armor_stand ~ ~ ~ {Tags:["stageView$(stage)","stageViews"],Invisible:true,Silent:true,Marker:false,Rotation:[0,90F]}

tellraw @a[tag=operator] {"text":"ステージ俯瞰カメラをセットしました"}