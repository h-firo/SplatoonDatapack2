#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 140
scoreboard players set @s specialPoint 0

#前隙
#scoreboard players set @s preDelay 6

#発動
#レール用のアマスタ
$summon armor_stand ~ ~ ~ {Tags:["reefsliderRail$(XpLevel)"],NoGravity:true,Invisible:true,Invulnerable:true}
$execute rotated as @s run rotate @n[type=armor_stand,tag=reefsliderRail$(XpLevel)] ~ 0
#プレイヤーを乗せるアイテムディスプレイ
$summon item_display ~ ~1 ~ {Tags:["reefsliderReef$(XpLevel)"],item:{id:"stone_pickaxe",components:{item_model:reefslider}},teleport_duration:1,data:{owner:$(XpLevel)},\
                                transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}
$execute rotated as @s run rotate @n[type=item_display,tag=reefsliderReef$(XpLevel)] ~ 0
$ride @s mount @n[type=item_display,tag=reefsliderReef$(XpLevel)]


#レール用のアマスタの向きをプレイヤーと一致（4方向）
#$execute if entity @s[y_rotation=-180..-135] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] -180 0 
#$execute if entity @s[y_rotation=-135..-91] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] -90 0
#$execute if entity @s[y_rotation=-90..-46] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] -90 0
#$execute if entity @s[y_rotation=-45..0] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] 0 0
#$execute if entity @s[y_rotation=0..44] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] 0 0
#$execute if entity @s[y_rotation=46..90] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] 90 0
#$execute if entity @s[y_rotation=90..135] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] 90 0
#$execute if entity @s[y_rotation=135..180] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] -180 0

#playsound item.goat_horn.sound.5 master @a ~ ~ ~ 0.3 2

#execute store result score @s rotate run data get entity @s Rotation[0]