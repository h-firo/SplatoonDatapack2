#attackNumの消去
#execute if score num resetNum < num shotNum run function core:game/reset/shotnum_loop with storage core:

#tick処理
execute as @a if entity @s[advancements={core:hold=false}] run attribute @s movement_speed modifier remove shot_move
#プレイヤー
execute as @a at @s run function core:player_tick with entity @s
#アマスタ
execute as @e[type=armor_stand,tag=ink,tag=!trizooka,tag=!crabtank,tag=!crabtank_explshot,tag=!attackDetection] at @s run function core:ink_tick with entity @s data
execute as @e[type=armor_stand,tag=trizooka] at @s run function core:ink_ticks/ink_tick_trizooka with entity @s data
execute as @e[type=armor_stand,tag=crabtank] at @s run function core:ink_ticks/ink_tick_crabtank with entity @s data
execute as @e[type=armor_stand,tag=crabtank_explshot] at @s run function core:ink_ticks/ink_tick_explshot with entity @s data
execute as @e[type=armor_stand,tag=attackDetection] at @s run function core:ink_ticks/ink_tick_detection with entity @s data
execute as @e[type=armor_stand,tag=inkstrikes] at @s run function core:specialweapons/tripleinkstrike/inkstrike_tick with entity @s data
execute as @e[type=armor_stand,tag=guides] unless score @s inkstrikeTimer matches 1.. at @s run function core:specialweapons/tripleinkstrike/guide_tick with entity @s data
execute as @e[type=armor_stand,tag=guides,scores={inkstrikeTimer=1..}] at @s run function core:specialweapons/tripleinkstrike/strikepoint_tick with entity @s data
#item_display
execute as @e[type=item_display,tag=fists] at @s run function core:specialweapons/triplesplashdown/fist_tick with entity @s data
#その他
execute as @e[tag=player,scores={health=..0}] at @s run function core:deaths/main
execute if score mode tutorialMode matches 0.. run function tutorial:tick

#クマサンブキタイマー
execute as @e[type=item,tag=Parts] unless score @s rareWeaponSummonTime matches 30.. run scoreboard players add @s rareWeaponSummonTime 1

#コアタイム
execute if score is isGame matches 1 run function core:game/tick
execute if score is isJudge matches 1 run function core:game/judge/tick
execute if score is isJudge matches 2 run function core:game/area/judge/tick
execute if score value mode matches 3 as @a at @s run function core:game/gaze_particle with entity @s

#人数カウント
scoreboard players set count playerCount 0
execute as @a run scoreboard players add count playerCount 1

#ディスプレイ系統
execute as @e[type=item_display,tag=bombDisplay] run function core:subweapons/bomb_display_tick
execute as @e[type=item_display,tag=trizookaDisplay] run function core:specialweapons/trizooka/bullet_display_tick
execute as @e[type=item_display,tag=explshotDisplay] run function core:specialweapons/crabtank/explshot_display_tick with entity @s data
execute as @e[type=item_display,tag=crabtankDisplay] run function core:specialweapons/crabtank/crabtankdisplay_tick with entity @s data
execute as @e[type=item_display,tag=kd] at @s run function core:specialweapons/killerwail51/display_tick with entity @s data
execute as @e[type=armor_stand,tag=bomb] at @s run function core:subweapons/armorstand_tick

execute as @e[tag=player,type=!player] at @s if entity @s[tag=Marking] run function core:marker/marking {XpLevel:100}

#アイテムを捨てるキーで発動するやつら
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:"weapon"}}}}] at @s run function core:subweapons/tick with entity @s
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:"specialweapon"}}}}] at @s run function core:specialweapons/tick with entity @s
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}}] at @s run function core:actions/superjump/set_jumppoint

#UIとHUD
function ui_hud:tick
execute as @a at @s if items entity @s player.cursor *[custom_data~{item:"button"}] run function item:clickevent

#パーティクル用TextDisplay
execute as @e[type=text_display,tag=particle] at @s run function core:particles/tick with entity @s data

#Debug
#scoreboard players set @a ink 999

#モード別処理
execute if score value mode matches 1 run gamemode spectator @a

#タグ・スコアリセット
tag @a remove Click
tag @e[tag=player,tag=alreadySearch] remove alreadySearch
scoreboard players set @a rightClick 0