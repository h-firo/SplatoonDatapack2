#パーティクルと攻撃判定
$particle dust{color:[$(r),$(g),$(b)],scale:1} ~ ~ ~ 0 0 0 0 1 force @a
$execute as @e[tag=player,distance=..0.3,tag=!killerwail$(owner)] at @s unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 0.1
$execute as @e[tag=player,distance=..0.3,tag=!killerwail$(owner)] unless score @s team matches $(team) run unction core:damages/remove_health {value:2,type:"killerwail",killer:$(owner)}
$execute as @e[tag=player,distance=..0.3,tag=!killerwail$(owner)] unless score @s team matches $(team) run tag @s add killerwail$(owner)
$execute positioned ^ ^ ^1 if entity @p[level=$(owner),distance=..100] run function core:specialweapons/killerwail51/wail_particle with entity @s data