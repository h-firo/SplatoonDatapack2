execute if score @s swirl matches 1 run data merge entity @s {transformation:{left_rotation:[0f,0f,100f,1f],right_rotation:[0f,0f,100f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
scoreboard players add @s swirl 1
execute if score @s swirl matches 6.. run kill @s