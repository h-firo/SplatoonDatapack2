summon armor_stand ~ ~ ~ {Marker:true,Tags:["bombParticle"],Rotation:[0,-90f]}
$execute as @n[tag=bombParticle,type=armor_stand] at @s run function core:subweapons/particle/horizontal {radius:$(radius),color:$(color)}
kill @n[tag=bombParticle]