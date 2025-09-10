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

playsound block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 2