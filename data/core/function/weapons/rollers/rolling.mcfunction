$execute unless score @s rollDamageCoolDown matches 1.. positioned ^ ^ ^1 as @e[tag=player,distance=..1] unless score @s team matches $(team) run tag @s add rd$(num)
$execute as @e[tag=rd$(num)] run function core:damages/remove_health {value:$(RollingDamage),type:main,killer:$(num)}
$execute if entity @e[tag=rd$(num)] run scoreboard players set @s rollDamageCoolDown $(DamageCoolDown)
$execute if entity @e[tag=rd$(num)] run playsound entity.slime.squish master @a ~ ~ ~ 2 1.5
$tag @e[tag=player,tag=rd$(num)] remove rd$(num)
execute if predicate core:is_moving run scoreboard players remove @s ink 5

#スペシャルポイント処理
$function core:actions/add_specialpoint {fx:$(MinRange),fy:-1,fz:$(MinRange),tx:$(MaxRange),ty:-1,tz:$(MaxRange),color:"$(color)",owner:$(num)}
$fill ~$(MinRange) ~-1 ~$(MinRange) ~$(MaxRange) ~-1 ~$(MaxRange) $(color)_concrete replace #core:can_inking