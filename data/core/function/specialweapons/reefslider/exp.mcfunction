#プレイヤーが所属しているteamと、プレイヤーが使うスペシャルを、storageに保存
$data modify storage special_temp: $(XpLevel) set from storage player: $(XpLevel).weapon
$data modify storage special_temp: $(XpLevel).team set from storage player: $(XpLevel).team
$data modify storage special_temp: $(XpLevel).color set from storage player: $(XpLevel).color
$data modify storage special_temp: $(XpLevel).num set from storage player: $(XpLevel).num

#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage special_temp: $(XpLevel).shotNum int 1 run scoreboard players get num shotNum

#爆発
$function core:specialweapons/reefslider/explosion/set with storage special_temp: $(XpLevel)

#終了
$kill @n[type=minecart,tag=float$(XpLevel)]
scoreboard players set @s specialUseCount 1