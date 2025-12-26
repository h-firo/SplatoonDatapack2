#パーティクルと攻撃判定
$particle dust{color:[$(r),$(g),$(b)],scale:1} ~ ~ ~ 0 0 0 0 1 force @a
$execute positioned ^ ^ ^-1 as @e[tag=player,distance=..0.3] at @s unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 0.1
$execute positioned ^ ^ ^-1 as @e[tag=player,distance=..0.3] unless score @s team matches $(team) run function core:damages/remove_health {value:2,type:"killerwail",killer:$(owner)}
$execute as @e[tag=player,distance=..0.3] at @s unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 0.1
$execute as @e[tag=player,distance=..0.3] unless score @s team matches $(team) run function core:damages/remove_health {value:2,type:"killerwail",killer:$(owner)}
$execute positioned ^ ^ ^2 if entity @p[level=$(owner),distance=..100] run function core:specialweapons/killerwail51/wail_particle with entity @s data