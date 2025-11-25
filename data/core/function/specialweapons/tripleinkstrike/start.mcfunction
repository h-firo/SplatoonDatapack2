#制限時間追加
scoreboard players set @s specialUseCount 0
scoreboard players set @s useSpecialWeapon 120
scoreboard players set @s specialPoint 0

#スペシャルウェポン所持
item replace entity @s hotbar.1 with copper_nugget[custom_data={item:"specialweapon"},item_model="specialweapon",item_name={translate:item.specialweapon.tripleinkstrike},custom_model_data={strings:["tripleinkstrike"]}] 3

#前隙
scoreboard players set @s preDelay 5