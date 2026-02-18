#ブラスター
$function core:damage {distance:3,num:$(shotNum),team:$(team),damage:$(damage),objDamage:$(objDamage),volume:1,objNum:$(objNum),owner:$(owner),type:"main"}
$execute at @e[tag=player,scores={lastHit=$(shotNum)}] positioned ~ ~1 ~ run summon text_display ~ ~ ~ {Tags:["particle"],data:{max:3,content:["\uE80$(team)","\uE80$(team)","\uE80$(team)"]},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[7f,7f,7f]},billboard:"center",text:{"text":"\uE600",color:"red"},background:16777215}
$execute if entity @e[tag=player,scores={lastHit=$(shotNum)}] run playsound entity.armor_stand.break master @a ~ ~ ~ 1 1
$execute if entity @e[tag=player,scores={lastHit=$(shotNum)}] run playsound entity.generic.explode master @a ~ ~ ~ 0.4 2