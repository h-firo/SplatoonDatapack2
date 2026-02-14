item replace entity @s armor.chest with air
scoreboard players set @s isDodgeRoll 0
scoreboard players set @s isInvincible 0
$data merge entity @n[type=item_display,tag=ultrastamp$(num)] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0f,0f],scale:[2,2,2]}}
execute if score @s stampMoveDelay matches 1.. run scoreboard players remove @s stampMoveDelay 1

#表示
$execute at @s run tp @n[type=item_display,tag=ultrastamp$(num)] ^-1 ^2.5 ^1
$execute rotated as @s run rotate @n[type=item_display,tag=ultrastamp$(num)] ~ ~

#ハンコ投げ
function core:specialweapons/ultrastamp/throw_judge with entity @s

#投げられたハンコのtick
#$execute as @e[type=armor_stand,tag=ThrownStamp$(num)] at @s run function core:specialweapons/ultrastamp/thrownstamp_tick with entity @s data

#突進
$execute if predicate core:key_input/forward unless score @s stampMoveDelay matches 1.. run function core:specialweapons/ultrastamp/stamp with storage player: $(num)
$execute unless predicate core:key_input/forward run function core:specialweapons/ultrastamp/reset with storage player: $(num)

#時間になったら消す
execute if score @s useSpecialWeapon matches ..1 run attribute @s movement_speed modifier remove ultrastamp
execute if score @s useSpecialWeapon matches ..1 run scoreboard players set @s stampPreDelay 0
execute if score @s isStampThrow matches 1 run return fail
$execute if score @s useSpecialWeapon matches ..1 run kill @e[tag=ultrastamp$(num),type=item_display]
