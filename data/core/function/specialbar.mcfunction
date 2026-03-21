#スペシャルポイント割合を計算
scoreboard players operation @s specialPointPerMax = @s specialPoint
scoreboard players operation @s specialPointPerMax *= 100 num
scoreboard players operation @s specialPointPerMax /= @s MaxSpecialPoint

#ガイド
execute if score @s specialPointPerMax matches 20.. if entity @s[advancements={core:guide/action/specialpoint=false}] run function core:guide/grant {category:action,name:specialpoint}

#たまった演出
execute if score @s specialPointPerMax matches 100.. run function core:actions/special_compeffect
execute if score @s specialPoint matches ..-1 run scoreboard players set @s specialPointPerMax 100
execute if score @s specialPoint matches ..-1 run scoreboard players set @s specialPoint -1000

#表示に反映
$execute store result storage player: $(XpLevel).pointPerMax float 0.01 run scoreboard players get @s specialPointPerMax
$function core:specialbar_show with storage player: $(XpLevel)