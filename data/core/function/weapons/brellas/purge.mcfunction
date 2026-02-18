#インクを減らす
$scoreboard players remove @s ink $(PurgeInk)
playsound item.armor.equip_gold master @a ~ ~ ~ 2 1
playsound item.bucket.empty_axolotl master @a ~ ~ ~ 1 2

#パージ用アマスタ
$summon armor_stand ~ ~ ~ {Tags:["purge$(num)"],Invisible:true,Invulnerable:true,Small:true,\
equipment:{chest:{id:"iron_chestplate",components:{enchantment_glint_override:false,enchantments:{"core:purge":1}}}},\
data:{team:$(team),owner:$(num),color:$(color),num:$(objNum),maxTime:$(PurgeD)}}
$rotate @n[type=armor_stand,tag=purge$(num)] ~ ~
$scoreboard players operation @n[type=armor_stand,tag=purge$(num)] objDamage = @s shieldHealth

#表示用ItemDisplay
$summon item_display ~ ~1 ~ {Tags:["purgeDisplay$(num)"],item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0f,0f],scale:[1f,1f,1f]},\
                            item:{id:"minecraft:nether_quartz_ore",count:1,components:{"minecraft:custom_model_data":{strings:["$(name)"]},item_model:purge}}}
$rotate @n[type=item_display,tag=purgeDisplay$(num)] ~ ~

#カサを開けなくする
scoreboard players set @s shieldHealth -10