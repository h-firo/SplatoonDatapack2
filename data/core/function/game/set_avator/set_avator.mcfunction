#アバター召喚
$summon mannequin ~ ~ ~ {Rotation:[90F,0F],Tags:["avator$(XpLevel)","playerAvator"],NoGravity:1b,hide_description:true,equipment:{mainhand:{id:"minecraft:emerald",count:1}},profile:{"id":$(UUID)}}
$data modify entity @n[type=mannequin,tag=avator$(XpLevel)] equipment.mainhand.components.item_model set from storage player: $(XpLevel).weapon.model
$execute if score @s team = team1 participationTeam run rotate @n[type=mannequin,tag=avator$(XpLevel)] 0 ~
$execute if score @s team = team2 participationTeam run rotate @n[type=mannequin,tag=avator$(XpLevel)] 180 ~
#$function core:player_avator/summon with entity @p[level=$(XpLevel)]
#$function core:player_avator/rotate with entity @p[level=$(XpLevel)]