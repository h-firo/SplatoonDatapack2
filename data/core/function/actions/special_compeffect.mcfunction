#演出
playsound block.note_block.bell master @a ~ ~ ~ 2 1
particle flash{color:[0.910,0.302,0.000,1.00]} ^ ^ ^1 0 0 0 0 1 force

#ガイド
execute if entity @s[advancements={core:guide/action/special_comp=false}] run function core:guide/grant {category:action,name:special_comp}

scoreboard players set @s specialPoint -1000