#スペシャルポイント割合を計算
scoreboard players operation @s specialPointPerMax = @s specialPoint
scoreboard players operation @s specialPointPerMax *= 100 num
scoreboard players operation @s specialPointPerMax /= @s MaxSpecialPoint
execute if score @s specialPointPerMax matches 100 run playsound block.note_block.harp master @s ~ ~ ~ 1 2
execute if score @s specialPointPerMax matches 100.. run scoreboard players set @s specialPointPerMax 100

#表示に反映
$execute store result storage player: $(XpLevel).pointPerMax float 0.01 run scoreboard players get @s specialPointPerMax
$function core:specialbar_show with storage player: $(XpLevel)