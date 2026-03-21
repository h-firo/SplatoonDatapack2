execute if entity @s[advancements={core:guide/action/ink_shortage=false}] run function core:guide/grant {category:action,name:ink_shortage}
playsound block.metal_pressure_plate.click_off master @s ~ ~ ~ 1
scoreboard players set @s inkShort 20
#tellraw @s {text:"インクが足りない！！",color:"red"}