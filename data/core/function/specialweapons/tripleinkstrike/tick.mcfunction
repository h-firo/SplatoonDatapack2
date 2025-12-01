$execute if score @s inkstrikeGuidePower matches 1.. if entity @s[tag=!Click] run function core:specialweapons/tripleinkstrike/guide_throw with storage player: $(num)

execute if score @s inkstrikeGuideCount matches 3.. run scoreboard players set @s specialUseCount 1