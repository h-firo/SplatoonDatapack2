#アバター召喚
$summon mannequin ~ ~ ~ {Rotation:[90F,0F],Tags:["avator$(XpLevel)","playerAvator"],NoGravity:1b,hide_description:true,equipment:{mainhand:{id:"minecraft:emerald",count:1},offhand:{id:"minecraft:emerald",count:1}},profile:{"id":$(UUID)}}
$data modify entity @n[type=mannequin,tag=avator$(XpLevel)] equipment.mainhand.components.item_model set from storage player: $(XpLevel).weapon.model
$execute if data storage player: {$(XpLevel).category:"dualies"} run data modify entity @n[type=mannequin,tag=avator$(XpLevel)] equipment.offhand.components.item_model set from storage player: $(XpLevel).weapon.model
$execute unless data storage player: {$(XpLevel).category:"dualies"} run item replace entity @n[type=mannequin,tag=avator$(XpLevel)] weapon.offhand with air
$execute if score @s team = team1 participationTeam run rotate @n[type=mannequin,tag=avator$(XpLevel)] 180 ~
$execute if score @s team = team2 participationTeam run rotate @n[type=mannequin,tag=avator$(XpLevel)] 0 ~
#$function core:player_avator/summon with entity @p[level=$(XpLevel)]
#$function core:player_avator/rotate with entity @p[level=$(XpLevel)]