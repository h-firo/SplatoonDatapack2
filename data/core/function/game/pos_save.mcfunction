#各プレイヤーの場所にアマスタを召喚
execute as @a at @s run function core:game/player_set/set_armorstand with entity @s

#スぺクテイト
gamemode spectator @a
$execute as @a at @s run spectate @n[tag=spawnerView$(stage)_1] @s