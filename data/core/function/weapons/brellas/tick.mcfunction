execute if score @s isGuard matches 1 run function core:weapons/brellas/judge_close with entity @s
$execute if score @s guardCoolDown matches 1.. run function core:weapons/brellas/cooldown_remove with storage shot_temp: $(XpLevel)
$execute as @e[type=armor_stand,tag=purge$(XpLevel)] at @s run function core:weapons/brellas/tick_purge with entity @s data