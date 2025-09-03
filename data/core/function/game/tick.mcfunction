scoreboard players add time coreTime 1
execute if score time coreTime matches 1..120 run function core:game/stage_view_rotate with storage core:
execute if score time coreTime matches 120 run function core:game/stage_view_rotate_reset with storage core:
execute if score time coreTime matches 120 run title @a times 0 8 0
execute if score time coreTime matches 120 run scoreboard players set mode coreTime 0
execute if score time coreTime matches 121 run function core:game/player_set
execute if score time coreTime matches 122 run function core:game/pos_save with storage core:
execute if score time coreTime matches 130 as @a at @s run function core:game/set_avator/armorstand with entity @s
execute if score time coreTime matches 182 run function core:game/spawner2_view with storage core:

#ゲーム終了
execute if score time coreTime matches 200.. run scoreboard players set is isGame 0

#モードが3のとき、目線先にパーティクル


