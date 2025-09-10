execute if block ~ ~-1 ~ #air run rotate @s ~ 45
execute unless block ~ ~-2 ~ #air run rotate @s ~ 0

#爆発準備中はタイマーを増やす
execute if score @s rsPrepareExplosion matches 1.. run scoreboard players add @s rsPrepareExplosion 1

#プレイヤーを動かす
execute unless score @s rsPrepareExplosion matches 1.. run tp @s ^ ^ ^0.7

#降りる動作をしたら爆発準備
scoreboard players set @s havePassenger 0
execute on passengers on vehicle run scoreboard players set @s havePassenger 1
execute if score @s havePassenger matches 0 unless score @s rsPrepareExplosion matches 1.. run rotate @s ~-90 ~
execute if score @s havePassenger matches 0 unless score @s rsPrepareExplosion matches 1.. run scoreboard players add @s rsPrepareExplosion 1
$execute if score @s havePassenger matches 0 run ride @p[level=$(num)] mount @s

#レールの終端に来たら爆発準備
$execute if entity @e[type=armor_stand,tag=reefsliderRail$(num),distance=..1.5] unless score @s rsPrepareExplosion matches 1.. run rotate @s ~-90 ~
$execute if entity @e[type=armor_stand,tag=reefsliderRail$(num),distance=..1.5] unless score @s rsPrepareExplosion matches 1.. run scoreboard players add @s rsPrepareExplosion 1\

execute if score @s rsPrepareExplosion matches 14.. run function core:specialweapons/reefslider/exp with entity @s data