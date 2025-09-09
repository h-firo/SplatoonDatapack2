#新ダメージ処理
$function core:damage {distance:15,num:$(shotNum),team:$(team),damage:$(damage),objDamage:$(objDamage),volume:1,objNum:$(objNum),owner:$(owner)}
$execute at @e[tag=attack$(shotNum)] positioned ~ ~1 ~ run summon text_display ~ ~ ~ {Tags:["particle"],data:{max:3,content:["\uE80$(team)","\uE80$(team)","\uE80$(team)"]},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[7f,7f,7f]},billboard:"center",text:{"text":"\uE600",color:"red"},background:16777215}

#$execute as @e[distance=..1,tag=player,tag=!attack$(shotNum)] unless entity @s[level=$(owner)] unless score @s team matches $(team) run scoreboard players remove @s health $(atDamage)
#$execute as @e[distance=..1,tag=player,tag=!attack$(shotNum)] at @s unless entity @s[level=$(owner)] unless score @s team matches $(team) run playsound entity.player.attack.crit master @a ~ ~ ~ 1
#$execute if entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum)] unless entity @e[distance=..1.7,tag=player,tag=!attack$(shotNum),level=$(owner)] kill @s
#$execute as @e[distance=..1,tag=player] unless entity @s[level=$(owner)] unless score @s team matches 0 run tag @s add attack$(shotNum)