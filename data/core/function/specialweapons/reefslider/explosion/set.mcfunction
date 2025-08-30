#球状
$summon armor_stand ~ ~ ~ {Tags:["sphere$(num)"],Rotation:[90f,-90f],NoGravity:true,data:{owner:$(num),team:$(team),color:$(color),num:$(shotNum)}}

particle explosion ~ ~ ~ 2 2 2 0 10 force @a

$execute as @n[type=armor_stand,tag=sphere$(num)] at @s run function core:specialweapons/reefslider/explosion/horizontal
$kill @n[type=armor_stand,tag=sphere$(num)]