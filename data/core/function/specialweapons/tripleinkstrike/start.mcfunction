#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 400
scoreboard players set @s specialPoint 0
scoreboard players set @s inkstrikeGuideCount 0
scoreboard players set @s inkstrikeGuidePower 0

#スペシャルウェポン所持
function core:specialweapons/tripleinkstrike/guide_give

#音
playsound block.vault.insert_item master @s ~ ~ ~ 1 1
playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 1
playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 1.2
playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 1.4

#前隙
scoreboard players set @s preDelay 5