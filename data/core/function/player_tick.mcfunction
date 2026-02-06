#最初の処理
execute unless score @s isJoin matches 1 run function core:join

scoreboard players set @s isDodgeRoll 0

#ホットバーロック
execute unless score @s isJumpMenuOpen matches 1 run function core:inventory_lock/tick with entity @s
execute if score @s isJumpMenuOpen matches 1 if items entity @s weapon.mainhand *[custom_data={item:"CloseJumpMenu"}] run function item:jump_menu/close with entity @s

#水に落ちたとき
execute if predicate core:in_water if entity @s[gamemode=!spectator] run function core:deaths/in_water

#クマサンブキのパーツ
execute if entity @e[type=item,tag=Parts,distance=..4,scores={rareWeaponSummonTime=30..}] run function core:pickup_parts with entity @s

#delay処理
execute unless score @s delay matches 0 run scoreboard players remove @s delay 1
execute unless score @s rollDelay matches -1 run scoreboard players add @s rollDelay 1
execute if score @s drinkTimer matches 340 run function core:actions/drink
execute if score @s drinkTimer matches 1.. run particle trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0 1 force
execute if score @s drinkTimer matches ..1 run function core:actions/drink_remove
execute unless score @s drinkTimer matches 0 run scoreboard players remove @s drinkTimer 1
$execute if score @s useSpecialWeapon matches 0.. run function core:specialweapons/use_tick with storage player: $(XpLevel)
execute if score @s shotDelay matches 1.. run scoreboard players remove @s shotDelay 10
execute if score @s accFP < @s rateFP run scoreboard players operation @s accFP += #fireUnit num
execute unless score @s sprintDelay matches 0 run scoreboard players remove @s sprintDelay 1
execute if score @s delay matches 0 run scoreboard players set @s accuracy 0
#$execute if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
#スペシャル中に動けるやつらはpreDelayの処理をスペシャル時にも行う
$execute if data storage player: {$(XpLevel):{specialWeapon:"tacticooler"}} if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
$execute if data storage player: {$(XpLevel):{specialWeapon:"killerwail51"}} if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
$execute if data storage player: {$(XpLevel):{specialWeapon:"bigbubbler"}} if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
$execute if data storage player: {$(XpLevel):{specialWeapon:"wavebreaker"}} if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
#スペシャル中に動けないやつらはpreDelayの処理をスペシャル時以外に行う
$execute unless data storage player: {$(XpLevel):{specialWeapon:"tacticooler"}} unless score @s useSpecialWeapon matches 0.. if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
$execute unless data storage player: {$(XpLevel):{specialWeapon:"killerwail51"}} unless score @s useSpecialWeapon matches 0.. if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
$execute unless data storage player: {$(XpLevel):{specialWeapon:"bigbubbler"}} unless score @s useSpecialWeapon matches 0.. if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)
$execute unless data storage player: {$(XpLevel):{specialWeapon:"wavebreaker"}} unless score @s useSpecialWeapon matches 0.. if score @s rightHold matches 0 run function core:predelay_set with storage shot_temp: $(XpLevel)

#プレイヤー固定
$function core:player_fixation with storage player: $(XpLevel)

#復活
execute if score @s resurrectionTime matches 1.. run scoreboard players remove @s resurrectionTime 1
execute if score @s resurrectionTime matches 0 run function core:deaths/resurrection

#ポイズンミスト
$function core:toxicmist_effect with storage player: $(XpLevel)

#スーパージャンプ
execute if score @s superJumpTime matches 0.. run function core:actions/superjump/tick with entity @s

#イカロール
#execute if predicate core:squidrolls/right if predicate core:is_onground unless score @s rollDelay matches 0.. run scoreboard players set @s rollDirection 0
#execute if predicate core:squidrolls/left if predicate core:is_onground unless score @s rollDelay matches 0.. run scoreboard players set @s rollDirection 1
#execute if predicate core:squidrolls/back if predicate core:is_onground unless score @s rollDelay matches 0.. run scoreboard players set @s rollDirection 2
#$execute if score @s rollDirection matches 0..3 run function core:actions/squidroll/roll with storage player: $(XpLevel)
#$execute if score @s rollDelay matches 0.. run function core:actions/squidroll/tick with storage player: $(XpLevel)

#スポナー射出
$execute if predicate core:push_space as @n[tag=spawnerRide$(XpLevel)] at @s run function core:game/shoot/rotate with entity @s data
$execute if score @s isShootReady matches 1 as @n[tag=spawnerRide$(XpLevel)] at @s run function core:game/shoot/shoot with entity @s

#ローラー横振り・縦振り判定
$execute if data storage player: {$(XpLevel):{category:"roller"}} if score @s rightHold matches 0 run function core:weapons/rollers/judge_verticalshot with storage player: $(XpLevel)

#チャージャーチャージ
execute unless entity @s[tag=Click] if score @s rightHold matches 1.. unless score @s shotDelay matches 1.. run function core:weapons/chargers/is_charger with entity @s
execute unless entity @s[tag=Click] run scoreboard players set @s rightHold 0
#execute unless entity @s[tag=Click] unless score @s snipewriterBullet matches 1.. unless score @s shotDelay matches 1.. run function core:weapons/chargers/charge_reset
execute unless entity @s[tag=Click] unless score @s snipewriterBullet matches 1.. run function core:weapons/chargers/charge_reset

#スピナー射撃
execute if score @s splatlingsDurationTime matches 1.. if items entity @s weapon.mainhand *[custom_data~{item:"weapon"}] run function core:weapons/splatlings/shot_macro with entity @s
execute if score @s splatlingsDurationTime matches 1.. unless items entity @s weapon.mainhand *[custom_data~{item:"weapon"}] run scoreboard players set @s splatlingsDurationTime 0

#マニューバースライド
$execute if data storage player: {$(XpLevel):{category:"dualies"}} if entity @s[tag=Click] if predicate core:push_space unless score @s dodgerollCooldown matches 1.. run function core:weapons/dualies/isdodgeroll with storage shot_temp: $(XpLevel)
$execute if score @s isDodgeRoll matches 1 run function core:weapons/dualies/dodgeroll with storage shot_temp: $(XpLevel)
execute if score @s dodgerollTime matches 1.. run scoreboard players remove @s dodgerollTime 1
execute if score @s dodgerollCooldown matches 1.. run scoreboard players remove @s dodgerollCooldown 1
execute if score @s dodgeRollShotTimer matches 1.. run scoreboard players remove @s dodgeRollShotTimer 1
execute if score @s isDodgeRollShot matches 1 unless score @s dodgeRollShotTimer matches 1.. run function core:weapons/dualies/isshotcancel with entity @s
$execute if score @s dodgerollTime matches 0 run function core:weapons/dualies/dodgeroll_cancel with storage shot_temp: $(XpLevel)

#スペシャルゲージの更新
function core:specialbar with entity @s

#ダメージ演出
$function core:damage_effect with storage opponent_color $(XpLevel)
#スペシャル発動
$execute if score @s rightClick matches 1 if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={item:"specialUse"}] run function core:specialweapons/use with storage player: $(XpLevel)

#射撃中の移動速度処理
attribute @s movement_speed modifier remove shot_move
$execute unless score @s useSpecialWeapon matches 0.. if items entity @s weapon.mainhand emerald[custom_data~{rolling:true}] run function core:weapons/shot_move with storage shot_temp: $(XpLevel)
$execute if score @s splatlingsDurationTime matches 1.. run function core:weapons/splatlings/shot_move with storage shot_temp: $(XpLevel)
execute unless score @s useSpecialWeapon matches 0.. if items entity @s weapon.mainhand emerald[custom_data~{chargekeep:true}] run function core:shot_move with entity @s
$execute if data storage player: {$(XpLevel):{specialWeapon:"tacticooler"}} if items entity @s weapon.mainhand emerald[custom_data~{rolling:true}] run function core:weapons/shot_move with storage shot_temp: $(XpLevel)
$execute if data storage player: {$(XpLevel):{specialWeapon:"killerwail51"}} if items entity @s weapon.mainhand emerald[custom_data~{rolling:true}] run function core:weapons/shot_move with storage shot_temp: $(XpLevel)
$execute if data storage player: {$(XpLevel):{specialWeapon:"bigbubbler"}} if items entity @s weapon.mainhand emerald[custom_data~{rolling:true}] run function core:weapons/shot_move with storage shot_temp: $(XpLevel)
$execute if data storage player: {$(XpLevel):{specialWeapon:"wavebreaker"}} if items entity @s weapon.mainhand emerald[custom_data~{rolling:true}] run function core:weapons/shot_move with storage shot_temp: $(XpLevel)
execute if score @s ink matches ..0 run attribute @s movement_speed modifier remove shot_move

#チャージキープ
#チャージキープ時
execute if score @s chargeKeepTime matches 1.. run scoreboard players remove @s chargeKeepTime 1
execute if score @s chargeKeepTime matches 1.. run attribute @s movement_speed modifier add chargekeep 0.5 add_value
execute if score @s chargeKeepTime matches 1.. run summon area_effect_cloud ~ ~ ~ \
{custom_particle:{type:"splash"},Radius:1f,Duration:10,Age:3,ReapplicationDelay:10,WaitTime:0,RadiusOnUse:-5f,potion_contents:{potion:"minecraft:water",\
custom_effects:[{id:"minecraft:invisibility",amplifier:1,duration:3,show_icon:false,show_particles:false}]}}
execute if score @s chargeKeepTime matches 1.. if items entity @s weapon.mainhand emerald[custom_data~{item:"weapon"}] run \
item modify entity @s weapon.mainhand {function:"set_custom_model_data",strings:{values:["1"],mode:"replace_section"}}
#パーティクル
execute if score @s chargeKeepTime matches 15.. run particle dust{color:[1,1,1],scale:1} ~ ~0.5 ~ 0 0 0 0 1 force @a
execute if score @s chargeKeepTime matches 8..15 run particle dust{color:[1,0.506,0.471],scale:1} ~ ~0.5 ~ 0 0 0 0 1 force @a
execute if score @s chargeKeepTime matches 1..8 run particle dust{color:[1,0,0],scale:1} ~ ~0.5 ~ 0 0 0 0 1 force @a
#チャージキープ時間中にsneakを解除したら、チャージを維持したままチャージキープを終了
execute if score @s chargeKeepTime matches 1.. if predicate core:else_sneaking run scoreboard players set @s chargeKeepTime -1
#チャージキープ時間が過ぎているときは速度と透明化をリセット
execute unless score @s chargeKeepTime matches 1.. run attribute @s movement_speed modifier remove chargekeep
execute unless score @s chargeKeepTime matches 1.. if items entity @s weapon.mainhand emerald[custom_data~{item:"weapon"}] run \
item modify entity @s weapon.mainhand {function:"set_custom_model_data",strings:{values:["0"],mode:"replace_section"}}
#チャージキープ終了時チャージを0にする
$execute if score @s chargeKeepTime matches 0 run function core:weapons/chargers/charge_reset with storage shot_temp: $(XpLevel)
#チャージキープ時間が過ぎていて、かつsneakしていないときはチャージキープできる状態にする
execute unless score @s chargeKeepTime matches 1.. if predicate core:else_sneaking run scoreboard players set @s chargeKeepTime -1

#バケツの弾処理
execute if score @s slosherTime matches 0.. run scoreboard players add @s slosherTime 1
$execute if score @s slosherTime matches 0.. run function core:weapons/sloshers/shot with storage player: $(XpLevel)

#ローラーの塗り進み
$execute if score @s rightHold matches 10.. if predicate core:is_moving if score @s ink matches 1.. run function core:weapons/rollers/rolling with storage shot_temp: $(XpLevel)
execute if score @s rollDamageCoolDown matches 1.. run scoreboard players remove @s rollDamageCoolDown 1

#Sブラモード
execute if items entity @s weapon.mainhand emerald[item_model=sblast92] run function core:weapons/blasters/sblast/modechange

#壁のぼりの処理
$function core:actions/wall_climb with storage player: $(XpLevel)

#ジャンプブレ
$function core:air_blur with storage shot_temp: $(XpLevel)

#マーキング
execute if entity @s[tag=Marking] run function core:marker/marking with entity @s

#マーキング矢印
$function core:marker/search with storage player: $(XpLevel)

#イカランプ
$function core:squidlamps/tick with storage player: $(XpLevel)

#インク量
execute if score @s ink matches ..0 run scoreboard players set @s ink 0
scoreboard players operation @s inkTo100 = @s ink
scoreboard players operation @s inkTo100 /= 10 num
$execute store result storage player: $(XpLevel).ink int 1 run scoreboard players get @s inkTo100

#イカ移動の処理
$function core:actions/sprint with storage player: $(XpLevel)