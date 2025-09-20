#紐づけさせるイカランプの番号を設定
execute if score @s team = team1 participationTeam store result storage squidlamps temp.linkNum int 1 run scoreboard players get team1 linkLampNum
execute if score @s team = team2 participationTeam store result storage squidlamps temp.linkNum int 1 run scoreboard players get team2 linkLampNum

#プレイヤー番号を取得
execute store result storage squidlamps temp.setPNum int 1 run experience query @s levels

#ストレージをマクロにして呼び出す
function core:squidlamps/link with storage squidlamps temp

#再帰処理
execute if score @s team = team1 participationTeam run scoreboard players add team1 linkLampNum 1
execute if score @s team = team2 participationTeam run scoreboard players add team2 linkLampNum 1
tag @s add alReadyLinkLamp
execute if entity @a[tag=!alReadyLinkLamp] as @p[tag=!alReadyLinkLamp] run function core:squidlamps/link_lamp