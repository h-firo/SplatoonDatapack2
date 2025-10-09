#持ち物クリア
clear @s

#透明化
effect give @s invisibility 5 1 true

#ジャンプ先指定
#$function core:actions/superjump/target_set with storage player: $(XpLevel)

#ジャンプ頂点設定
function core:actions/superjump/centerpos_get with entity @s
$function core:actions/superjump/marker_set with storage player: $(XpLevel)

#イカ表示
$function core:actions/superjump/show_squid with storage player: $(XpLevel)

#ライド用エンティティ
#$summon item_display ~ ~ ~ {Tags:["jumpCarrier$(XpLevel)"],teleport_duration:23}
$ride @s mount @n[type=item_display,tag=jumpCarrier$(XpLevel)]

#スーパージャンプ時間設定
scoreboard players set @s superJumpTime 0