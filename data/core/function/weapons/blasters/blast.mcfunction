#演出
playsound entity.generic.explode master @a ~ ~ ~ 1 2
$summon text_display ~ ~ ~ {Tags:["particle"],data:{max:7,content:["\uE6$(team)0","\uE6$(team)1","\uE6$(team)2","\uE6$(team)3","\uE6$(team)4","\uE6$(team)5","\uE6$(team)6"]},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[10f,10f,10f]},billboard:"center",text:{"text":"\uE600",color:"red"},background:16777215}
$execute as @a[level=$(owner)] at @s run playsound entity.generic.explode master @s ~ ~ ~ 1 2
$particle block{block_state:"minecraft:$(color)_concrete"} ~ ~ ~ 0.3 0.3 0.3 0 20 force @a

#塗り
$fill ~-1 ~-3 ~-1 ~1 ~2 ~1 $(color)_concrete replace #core:can_inking

#ダメージ
$function core:damage {distance:$(radius),num:$(shotNum),team:$(team),damage:$(blastDamage),objDamage:$(objDamage),volume:1,objNum:$(objNum),owner:$(owner),type:"main"}
kill @s