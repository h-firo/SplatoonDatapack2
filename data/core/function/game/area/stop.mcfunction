#カウントストップ
scoreboard players set value areaOwner 0

#音
execute as @a at @s run playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 1

#通知
tellraw @a {"text":"カウントストップした！",color:white}