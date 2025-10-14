stopsound @a record
tellraw @a [{"text":"残り一分！！",bold:true,color:white}]
execute as @a at @s run playsound custom:nowornever record @s ~ ~ ~ 1 1
scoreboard players set is isChangeMusic 1