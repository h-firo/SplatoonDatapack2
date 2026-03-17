#ガチホコのオブジェクト
execute as @n[type=item_display,tag=rainmakerBarrier] at @s run function core:game/rainmaker/barrier_tick with storage core: joinColor
execute as @n[type=item_display,tag=rainmakerObject] at @s run function core:game/rainmaker/rainmaker_tick

#ガチホコ台
execute as @e[type=marker,tag=rainmakerPutPoint] at @s run function core:game/rainmaker/tick_putpoint

#持っている人
execute as @a if items entity @s hotbar.0 emerald[item_model="rainmaker"] at @s run function core:game/rainmaker/possessor_tick

#カウントが0になっていたら終了
execute if score team1 areaCount matches ..0 run function core:game/rainmaker/judge/judge
execute if score team2 areaCount matches ..0 run function core:game/rainmaker/judge/judge
execute if score team1 areaCount matches ..0 run function core:game/end
execute if score team2 areaCount matches ..0 run function core:game/end