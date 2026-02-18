#スクリュースロッシャー専用
$function core:damage {distance:5,num:$(shotNum),team:$(team),damage:76,objDamage:129,volume:1,objNum:$(objNum),owner:$(owner),type:"main"}
$execute at @e[tag=player,scores={lastHit=$(shotNum)}] positioned ~ ~1 ~ run summon text_display ~ ~ ~ {Tags:["particle"],data:{max:3,content:["\uE80$(team)","\uE80$(team)","\uE80$(team)"]},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[7f,7f,7f]},billboard:"center",text:{"text":"\uE600",color:"red"},background:16777215}
$execute if entity @e[tag=player,scores={lastHit=$(shotNum)}] run kill @s

#渦ダメージ
$function core:damage {distance:15,num:$(shotNum),team:$(team),damage:38,objDamage:65,volume:1,objNum:$(objNum),owner:$(owner),type:"main"}