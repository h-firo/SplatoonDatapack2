#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

#アマスタをsummon
$function core:weapons/brellas/data_merge {dx:0,dy:0,dz:2,num:$(num),sNum:$(shotNum)}
$function core:weapons/brellas/shot with storage shot_temp: $(num)

$function core:weapons/brellas/data_merge {dx:0.15,dy:0,dz:1.8,num:$(num),sNum:$(shotNum)}
$function core:weapons/brellas/shot with storage shot_temp: $(num)

$function core:weapons/brellas/data_merge {dx:-0.15,dy:0,dz:1.5,num:$(num),sNum:$(shotNum)}
$function core:weapons/brellas/shot with storage shot_temp: $(num)

$function core:weapons/brellas/data_merge {dx:0,dy:0.15,dz:2,num:$(num),sNum:$(shotNum)}
$function core:weapons/brellas/shot with storage shot_temp: $(num)

$function core:weapons/brellas/data_merge {dx:0.15,dy:-0.15,dz:2,num:$(num),sNum:$(shotNum)}
$function core:weapons/brellas/shot with storage shot_temp: $(num)

$function core:weapons/brellas/data_merge {dx:-0.15,dy:-0.15,dz:2,num:$(num),sNum:$(shotNum)}
$function core:weapons/brellas/shot with storage shot_temp: $(num)

$execute as @e[type=armor_stand,tag=owner$(num),tag=msn$(shotNum)] run data modify entity @s data.color set from storage team_color: colors.$(team)
$execute as @e[type=armor_stand,tag=owner$(num),tag=msn$(shotNum)] at @s run rotate @s facing entity @p[level=$(num)]
$execute as @e[type=armor_stand,tag=owner$(num),tag=msn$(shotNum)] at @s run function core:weapons/shooters/shot_as with storage shot_temp: $(num)
playsound item.bucket.empty_tadpole master @a ~ ~ ~ 1 2
playsound item.bucket.empty_tadpole master @a ~ ~ ~ 1 2
playsound item.bucket.empty_tadpole master @a ~ ~ ~ 1 2
scoreboard players set @s delay 9
$scoreboard players remove @s ink $(Ink)
$scoreboard players set @s shotDelay $(FireRate)
$scoreboard players add @s accuracy $(Blur)
$execute if score @s accuracy matches $(MaxBlur).. run scoreboard players set @s accuracy $(MaxBlur)