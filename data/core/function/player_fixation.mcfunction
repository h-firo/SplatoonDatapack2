#プレイヤーを強制的に固定しているとき
$execute if score @s viewer matches 0 run spectate @n[tag=stageView$(stage)] @s
$execute if score @s viewer matches 1 run spectate @n[tag=spawnerView$(stage)_1] @s
$execute if score @s viewer matches 2 run spectate @n[tag=spawnerView$(stage)_2] @s
$execute if score @s viewer matches 3 run ride @s mount @n[type=item_display,tag=spawnerRide$(num)]
$execute if score @s viewer matches 4 run ride @s mount @n[type=item_display,tag=jumpCarrier$(num)]