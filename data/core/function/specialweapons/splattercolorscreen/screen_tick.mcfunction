tp @s ^ ^ ^0.02
scoreboard players add @s screenPaintDelay 1
execute if score @s screenPaintDelay matches 20.. run function core:specialweapons/splattercolorscreen/paint with entity @s data

#ダメージ判定用ループを起動
scoreboard players set @s damageLoopCount 0
execute positioned ^-5 ^ ^ run function core:specialweapons/splattercolorscreen/damage_judge with entity @s data

#$execute positioned ^-8 ^-2 ^-1 as @e[tag=player,dx=16,dy=6,dz=1] unless score @s team matches $(team) run \
function core:damages/remove_health {value:10,type:"burstbomb",killer:$(owner)}
$tp @n[type=item_display,tag=screenDisplay$(owner)] @s