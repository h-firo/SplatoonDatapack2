#^-5～^5まで繰り返す（横にずらしていく）
$execute as @e[tag=player,distance=..2] run function core:specialweapons/splattercolorscreen/damage {team:$(team),owner:$(owner)}
#高さ判定
#$execute positioned ^ ^1 ^ as @e[tag=player,distance=..2] run function core:specialweapons/splattercolorscreen/damage {team:$(team),owner:$(owner)}
$execute positioned ^ ^2 ^ as @e[tag=player,distance=..2] run function core:specialweapons/splattercolorscreen/damage {team:$(team),owner:$(owner)}
#$execute positioned ^ ^-1 ^ as @e[tag=player,distance=..2] run function core:specialweapons/splattercolorscreen/damage {team:$(team),owner:$(owner)}
$execute positioned ^ ^-2 ^ as @e[tag=player,distance=..2] run function core:specialweapons/splattercolorscreen/damage {team:$(team),owner:$(owner)}
#10回ループ
scoreboard players add @s damageLoopCount 1
execute if score @s damageLoopCount matches ..5 positioned ^2 ^ ^ run function core:specialweapons/splattercolorscreen/damage_judge with entity @s data