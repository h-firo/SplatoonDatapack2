$execute at @s run tp @n[type=item_display,tag=waveBreakerCupDisplay$(owner)] ~ ~0.6 ~
execute if entity @s[nbt={OnGround:false}] run return fail

#タイマー増加
scoreboard players add @s waveBreakerTimer 1

#衝撃波
#execute if score @s waveBreakerTimer matches 50 run execute as @e[tag=aj.wavebreaker.root] run function animated_java:wavebreaker/animations/bound/play
execute if score @s waveBreakerTimer matches 50 run scoreboard players set @s waveTimer 0
#execute if score @s waveBreakerTimer matches 100 run execute as @e[tag=aj.wavebreaker.root] run function animated_java:wavebreaker/animations/bound/play
execute if score @s waveBreakerTimer matches 100 run scoreboard players set @s waveTimer 0
#execute if score @s waveBreakerTimer matches 150 run scoreboard players set @s waveTimer 0

#衝撃波を動かす
$execute store result storage temp: $(owner).waveSize float 0.1 run scoreboard players get @s waveTimer
$data merge storage temp: {$(owner):{team:$(team),owner:$(owner),r:$(r),g:$(g),b:$(b)}}
$function core:specialweapons/wavebreaker/circle with storage temp: $(owner)
#execute if score @s waveTimer matches 0 run function core:specialweapons/wavebreaker/circle {radius:1}
#execute if score @s waveTimer matches 10 run function core:specialweapons/wavebreaker/circle {radius:3}
#execute if score @s waveTimer matches 20 run function core:specialweapons/wavebreaker/circle {radius:5}
#execute if score @s waveTimer matches 30 run function core:specialweapons/wavebreaker/circle {radius:7}
#execute if score @s waveTimer matches 40 run function core:specialweapons/wavebreaker/circle {radius:9}
#execute if score @s waveTimer matches 50 run function core:specialweapons/wavebreaker/circle {radius:11}

scoreboard players add @s waveTimer 3

#3回波を送ったら消える
$execute if score @s waveBreakerTimer matches 150.. run kill @n[type=item_display,tag=waveBreakerCupDisplay$(owner)]
#execute if score @s waveBreakerTimer matches 150.. run function animated_java:wavebreaker/remove/all
execute if score @s waveBreakerTimer matches 150.. run kill @s

#なぜか3回送っても消えないときの処理
$execute unless score @p[level=$(owner)] useSpecialWeapon matches 1.. run kill @n[type=item_display,tag=waveBreakerCupDisplay$(owner)]
$execute unless score @p[level=$(owner)] useSpecialWeapon matches 1.. run kill @s