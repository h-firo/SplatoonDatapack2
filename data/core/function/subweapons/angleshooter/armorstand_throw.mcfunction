#塗り判定
$execute if block ~ ~ ~0.1 #core:can_sticking if entity @a[level=$(num),distance=..25] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 $(color)_concrete replace #core:can_inking
$execute if block ~ ~ ~0.1 #core:can_sticking if entity @a[level=$(num),distance=..25] run return fail

#マーカー用アマスタをsummon
$summon armor_stand ~ ~ ~ {Tags:["marker$(bombNum)","bomb","owner$(num)"],Invisible:true,Silent:true,data:{team:$(team),owner:$(num),bombNum:$(bombNum),type:"angleshooter_marker",color:$(color)},NoGravity:true}
$data modify entity @n[type=armor_stand,tag=marker$(bombNum)] data.r set from storage dustcolor: $(team).r
$data modify entity @n[type=armor_stand,tag=marker$(bombNum)] data.g set from storage dustcolor: $(team).g
$data modify entity @n[type=armor_stand,tag=marker$(bombNum)] data.b set from storage dustcolor: $(team).b

#直進＆再帰
$execute if block ~ ~-0.1 ~ #core:can_sticking if entity @a[level=$(num),distance=..25] positioned ^ ^0.5 ^1 run function core:subweapons/angleshooter/armorstand_throw with storage subw: $(num)
$execute unless block ~ ~-0.1 ~ #core:can_sticking if entity @a[level=$(num),distance=..25] positioned ^ ^ ^1 run function core:subweapons/angleshooter/armorstand_throw with storage subw: $(num)