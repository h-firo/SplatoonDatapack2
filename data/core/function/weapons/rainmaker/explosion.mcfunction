
#爆発するか？（しない場合は即キル）
execute unless data entity @s {data:{Explosion:true}} run return run kill @s

#重力を消す
execute unless score @s explosionTimer matches 1.. run data merge entity @s {NoGravity:true}

#爆発待機
$execute if score @s explosionTimer matches 1 run summon item_display ~ ~ ~ {Tags:["rainmakerDisplay$(shotNum)"],data:{team:$(team),owner:$(owner),num:$(shotNum)},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2,2,2]},interpolation_duration:5,\
                            item:{id:"minecraft:turtle_scute",count:1,components:{"item_model":"rainmaker_effect","minecraft:custom_model_data":{strings:["$(color)"]}}}}
$execute if score @s explosionTimer matches 2 run \
data merge entity @n[type=item_display,tag=rainmakerDisplay$(shotNum)] {transformation:{scale:[0.5,0.5,0.5]}}
$execute if score @s explosionTimer matches 13 run \
data merge entity @n[type=item_display,tag=rainmakerDisplay$(shotNum)] {transformation:{scale:[7,7,7]}}
execute unless score @s explosionTimer matches 17.. run return run scoreboard players add @s explosionTimer 1

#爆発
$function core:subweapons/particle/set {radius:3,color:$(color)}
$fill ~-2 ~-1 ~-2 ~2 ~2 ~2 $(color)_concrete replace #core:can_inking
$execute as @e[distance=..2.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:180,type:"main",killer:$(owner)}
$execute as @e[distance=..3.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) run function core:damages/remove_health {value:40,type:"main",killer:$(owner)}
$execute as @e[distance=..3.5,tag=player] at @s unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
$execute as @e[distance=..3.5,tag=player] unless entity @s[level=$(owner)] unless score @s team matches $(team) as @a[level=$(owner)] at @s run playsound entity.player.hurt master @s ~ ~ ~ 1

$kill @n[type=item_display,tag=rainmakerDisplay$(shotNum)]
kill @s