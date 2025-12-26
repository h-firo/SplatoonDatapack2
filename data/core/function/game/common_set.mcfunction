#チーム割り当て
function core:game/set_team

#登場色割り当て
function core:game/assign_color with storage core:

#相手色の割り当て
execute as @a run function core:game/set_opponent_color with entity @s

#イカランプ紐づけ
data remove storage squidlamps Active
scoreboard players set team1 linkLampNum 0
scoreboard players set team2 linkLampNum 4
tag @a remove alReadyLinkLamp
function core:squidlamps/link_lamp

#スコアの初期化
scoreboard players set @a charge 0
scoreboard players set @a useSpecialWeapon 1
scoreboard players set @a ink 999

#ステージごとに異なる場所に
execute store result storage core: stage int 1 run scoreboard players get value stage
function core:game/stage_view with storage core: