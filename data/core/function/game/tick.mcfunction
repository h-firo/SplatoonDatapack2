#ルール特有処理
execute if score value gameRule matches 1 run function core:game/area/tick with storage core: joinColor

#ゲーム前演出
scoreboard players add time coreTime 1
execute if score time coreTime matches 1..120 run function core:game/stage_view_rotate with storage core:
execute if score time coreTime matches 120 run function core:game/stage_view_rotate_reset with storage core:
execute if score time coreTime matches 120 run title @a times 0 8 0
execute if score time coreTime matches 120 run scoreboard players set @a viewer -1
execute if score time coreTime matches 121 run function core:game/player_set
execute if score time coreTime matches 122 run function core:game/pos_save with storage core:
execute if score time coreTime matches 130 as @a at @s run function core:game/set_avator/armorstand with entity @s
execute if score time coreTime matches 182 run function core:game/spawner2_view with storage core:
execute if score time coreTime matches 232 run gamemode adventure @a
execute if score time coreTime matches 232 as @a at @s run function core:game/shoot/ready with entity @s
execute if score time coreTime matches 233 as @a at @s run function core:game/shoot/tp with entity @s
execute if score time coreTime matches 272 as @e[tag=spawnerRides] at @s run function core:game/shoot/rotate with entity @s data
execute if score time coreTime matches 273..300 as @e[tag=spawnerRides] at @s run function core:game/shoot/shoot with entity @s
execute if score time coreTime matches 274 run function core:game/music_select

#試合時間を減らす
execute if score time coreTime matches ..274 run return fail
scoreboard players remove time gameTime 1
scoreboard players operation min gameTime = time gameTime
scoreboard players operation min gameTime /= 1200 num
scoreboard players set minus gameTime 1200
scoreboard players operation minus gameTime *= min gameTime
scoreboard players operation sec gameTime = time gameTime
scoreboard players operation sec gameTime -= minus gameTime
scoreboard players operation sec gameTime /= 20 num

#レギュラーマッチ時、残り1分になったら音楽を変える
execute if score value gameRule matches 0 if score time gameTime matches ..1200 unless score is isChangeMusic matches 1 run function core:game/music_change_end


#ゲーム終了
execute if score time gameTime matches ..0 if score value gameRule matches 0 run function core:game/judge/judge
execute if score time gameTime matches ..0 if score value gameRule matches 1 run function core:game/area/judge/judge
execute if score time gameTime matches ..0 run function core:game/end

#モードが3のとき、目線先にパーティクル


