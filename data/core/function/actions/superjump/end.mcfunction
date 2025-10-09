#使ったものを削除
$kill @e[type=marker,tag=jumpTop$(XpLevel)]
$kill @e[type=marker,tag=jumpTarget$(XpLevel)]
$kill @e[type=item_display,tag=jumpCarrier$(XpLevel)]
$kill @e[type=item_display,tag=jumpSquid$(XpLevel)]
$kill @e[type=text_display,tag=jumpMarker$(XpLevel)]
$kill @e[type=text_display,tag=jumpMarkerText$(XpLevel)]

#ジャンプ先選択画面をクローズ
function item:jump_menu/close with entity @s

effect clear @s invisibility
scoreboard players set @s superJumpTime -1