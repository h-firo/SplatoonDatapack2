playsound block.dispenser.fail master @s ~ ~ ~ 2 1.5

#アマスタをsummon
$summon armor_stand ~ ~ ~ {Tags:["bomb$(bombNum)","bomb","owner$(num)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),bombNum:$(bombNum),color:$(color),type:"inkmine"},attributes:[{id:"minecraft:gravity",base:1}]}

scoreboard players remove @s ink 600