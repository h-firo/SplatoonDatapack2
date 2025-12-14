#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 53
scoreboard players set @s specialPoint 0
scoreboard players set @s inkstrikeGuideCount 0
scoreboard players set @s inkstrikeGuidePower 0

#スペシャルウェポン所持
$function core:specialweapons/triplesplashdown/rise with storage player: $(XpLevel) 

#音
playsound block.vault.insert_item master @s ~ ~ ~ 1 1

#前隙
scoreboard players set @s preDelay 5