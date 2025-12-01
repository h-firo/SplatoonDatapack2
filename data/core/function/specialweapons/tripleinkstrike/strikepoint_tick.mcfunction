#タイマー増加
scoreboard players add @s inkstrikeTimer 1

#ガイド着弾
execute if score @s inkstrikeTimer matches 10.. run function core:specialweapons/tripleinkstrike/summon_inkstrike with entity @s data