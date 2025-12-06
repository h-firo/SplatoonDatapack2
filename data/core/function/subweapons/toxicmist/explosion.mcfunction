#ミスト展開
$summon armor_stand ~ ~ ~ {Tags:["bomb","inkmist"],Invisible:true,Silent:true,Small:true,data:{team:$(team),type:"inkmist"},NoGravity:true}
$summon block_display ~ ~ ~ {Tags:["inkmistdisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,0f,-2f],scale:[4f,4f,4f]},block_state:{Name:"minecraft:$(color)_stained_glass"}}

#音
playsound block.glass.break master @a ~ ~ ~ 0.5 1
playsound entity.wind_charge.wind_burst master @a ~ ~ ~ 1 2

#バルーンがあったら音を鳴らす
execute if entity @e[type=piglin,tag=balloon,distance=..3.5] run playsound entity.witch.drink master @a ~ ~ ~ 2 1