#アバター召喚
$summon mannequin ~ ~ ~ {Rotation:[90F,0F],Tags:["avator$(num)","playerAvator"],NoGravity:1b,hide_description:true,equipment:{mainhand:{id:"minecraft:emerald",count:1},offhand:{id:"minecraft:emerald",count:1}},profile:{"id":$(UUID)}}
$data modify entity @n[type=mannequin,tag=avator$(num)] equipment.mainhand.components.item_model set from storage player: $(num).weapon.model
$execute if data storage player: {$(num).category:"dualies"} run data modify entity @n[type=mannequin,tag=avator$(num)] equipment.offhand.components.item_model set from storage player: $(num).weapon.model
$execute unless data storage player: {$(num).category:"dualies"} run item replace entity @n[type=mannequin,tag=avator$(num)] weapon.offhand with air
$execute if score @s team = team1 participationTeam run data modify storage player: $(num).yaw set from storage playerspawner: $(stage).team1.0.yaw
$execute if score @s team = team2 participationTeam run data modify storage player: $(num).yaw set from storage playerspawner: $(stage).team2.0.yaw
$function core:game/set_avator/rotate_macro with storage player: $(num)
#$execute if score @s team = team1 participationTeam run rotate @n[type=mannequin,tag=avator$(num)] 180 ~
#$execute if score @s team = team2 participationTeam run rotate @n[type=mannequin,tag=avator$(num)] 0 ~
#$function core:player_avator/summon with entity @p[level=$(num)]
#$function core:player_avator/rotate with entity @p[level=$(num)]