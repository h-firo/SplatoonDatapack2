#プレイヤーの位置を保存
execute store result score @s shotX run data get entity @s Pos[0] 1000
execute store result score @s shotY run data get entity @s Pos[1] 1000
execute store result score @s shotZ run data get entity @s Pos[2] 1000

playsound entity.wind_charge.throw master @a ~ ~ ~ 1 0.5

#アマスタをsummon
$execute positioned ~ ~1.6 ~ run \
summon armor_stand ^ ^ ^2 {Tags:["bomb$(bombNum)","bomb","owner$(num)"],Invisible:true,Silent:true,Small:true,data:{team:$(team),owner:$(num),bombNum:$(bombNum),type:"fizzybomb"},attributes:[{id:"minecraft:gravity",base:0.08}]}
$summon item_display ~ ~ ~ {Tags:["bombDisplay"],data:{bNum:$(bombNum),team:$(team),owner:$(num),color:$(color),type:"fizzybomb"},item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[-1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.2f,0f],scale:[1.5f,1.5f,1.5f]},\
                            item:{id:"minecraft:nether_quartz_ore",count:1,components:{"minecraft:custom_model_data":{strings:["$(color)"]},item_model:fizzybomb}}}
$item replace entity @n[type=armor_stand,tag=bomb$(bombNum)] armor.head with minecraft:iron_helmet[enchantment_glint_override=false,enchantments={"core:fizzy":1}]
$rotate @n[type=armor_stand,tag=bomb$(bombNum)] facing entity @s eyes
$execute if score @s fizzyCharge matches 0..199 run scoreboard players set @n[type=item_display,tag=bombDisplay,nbt={data:{bNum:$(bombNum)}}] maxFizzyCount 1
$execute if score @s fizzyCharge matches 200..399 run scoreboard players set @n[type=item_display,tag=bombDisplay,nbt={data:{bNum:$(bombNum)}}] maxFizzyCount 2
$execute if score @s fizzyCharge matches 400.. run scoreboard players set @n[type=item_display,tag=bombDisplay,nbt={data:{bNum:$(bombNum)}}] maxFizzyCount 3 

scoreboard players remove @s ink 700
scoreboard players set @s fizzyCharge 0
scoreboard players set @s playFizzySound 0


#as
$execute as @e[type=armor_stand,tag=bomb$(bombNum)] at @s run function core:subweapons/fizzybomb/bomb_as {num:$(num)}