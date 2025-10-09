#最も近いプレイヤーの頭を取得
#最も近くにいるプレイヤーにタグをつける
$tag @p[tag=!canJump$(num)] add canJumpSet$(num)
$tag @n[tag=squidBeakon,tag=!canJumpBeakon$(num)] add canJumpBeakonSet$(num)

#ビーコンなら
$execute if entity @e[tag=canJumpBeakonSet$(num)] run give @s player_head[profile="MHF_ArrowUp",custom_data={id:$(jumpNum),owner:$(num),team:$(team)}]

#プレイヤー
$data modify storage superjump: $(num).setUUID set from entity @p[tag=canJumpSet$(num)] UUID
$execute store result storage superjump: $(num).num int 1 run experience query @s levels
$function item:jump_menu/give_playerhead with storage superjump: $(num)

#統合タグ付与
$tag @n[tag=canJumpBeakonSet$(num)] add canJumpBeakon$(num)_$(jumpNum)
$tag @p[tag=canJumpSet$(num)] add canJump$(num)
$tag @n[tag=canJumpBeakonSet$(num)] add canJumpBeakon$(num)
#一時タグ除去
$tag @n[tag=canJumpSet$(num)] remove canJumpSet$(num)
$tag @n[tag=canJumpBeakonSet$(num)] remove canJumpBeakonSet$(num)

#繰り返し
scoreboard players add @s jumpNum 1
$execute store result storage player: $(num).jumpNum int 1 run scoreboard players get @s jumpNum
$execute if entity @a[tag=!canJump$(num)] run function item:jump_menu/set_canjump with storage player: $(num)
$execute if entity @e[tag=squidBeakon,tag=!canJumpBeakon$(num)] run function item:jump_menu/set_canjump with storage player: $(num)