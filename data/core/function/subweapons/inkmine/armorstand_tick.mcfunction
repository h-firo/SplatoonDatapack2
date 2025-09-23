#パーティクル（設置者と、そのチームに属するプレイヤーにしか見えない）
$particle block{block_state:"minecraft:$(color)_wool"} ~ ~ ~ 0 0 0 0 1 force @a[scores={team=$(team)}]
$function core:subweapons/inkmine/circle_purticle {color:$(color),team:$(team)}

#プレイヤー検知
$execute if entity @n[tag=player,distance=..2,tag=!inkMine$(bombNum)] unless score @n[tag=player,distance=..2,tag=!inkMine$(bombNum)] team matches $(team) run \
function core:subweapons/inkmine/primed {team:$(team),bombNum:$(bombNum)}

#下のブロックが自チームのものでなければ起爆
$execute unless block ~ ~-1 ~ $(color)_concrete run function core:subweapons/inkmine/explosion {team:$(team),bombNum:$(bombNum),owner:$(owner)}

#起爆したプレイヤーがいるか？
$execute if entity @e[tag=player,tag=inkMine$(bombNum)] run scoreboard players add @s explosionTimer 1
$execute if score @s explosionTimer matches 20.. run function core:subweapons/inkmine/explosion {team:$(team),bombNum:$(bombNum),owner:$(owner)}