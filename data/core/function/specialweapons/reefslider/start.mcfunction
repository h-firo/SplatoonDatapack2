#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 140
scoreboard players set @s specialPoint 0

#前隙
#scoreboard players set @s preDelay 6

#発動
#レール用のアマスタ
$execute store result storage rail_ $(XpLevel).posX int 1 run data get entity @s Pos[0]
$execute store result storage rail_ $(XpLevel).posZ int 1 run data get entity @s Pos[2]
$data merge storage rail_ {$(XpLevel):{num:$(XpLevel)}}
$function core:specialweapons/reefslider/summon_armorstand with storage rail_ $(XpLevel)

#レール用のアマスタの向きをプレイヤーと一致（4方向）
$execute if entity @s[y_rotation=-180..-135] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] -180 0 
$execute if entity @s[y_rotation=-135..-91] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] -90 0
$execute if entity @s[y_rotation=-90..-46] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] -90 0
$execute if entity @s[y_rotation=-45..0] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] 0 0
$execute if entity @s[y_rotation=0..44] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] 0 0
$execute if entity @s[y_rotation=46..90] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] 90 0
$execute if entity @s[y_rotation=90..135] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] 90 0
$execute if entity @s[y_rotation=135..180] run rotate @n[type=armor_stand,tag=rail$(XpLevel)] -180 0

playsound item.goat_horn.sound.5 master @a ~ ~ ~ 0.3 2

execute store result score @s rotate run data get entity @s Rotation[0]