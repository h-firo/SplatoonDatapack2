scoreboard players set @s isJumpMenuOpen 1
clear @s

#リセット
scoreboard players set @s jumpNum 0

#ジャンプ先選択用プレイヤーの頭を付与
$execute store result storage player: $(XpLevel).jumpNum int 1 run scoreboard players get @s jumpNum
$function item:jump_menu/set_canjump with storage player: $(XpLevel)