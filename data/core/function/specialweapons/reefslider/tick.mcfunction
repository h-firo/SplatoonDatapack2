#レールを引く
$execute if score @s useSpecialWeapon matches 125.. as @e[type=armor_stand,tag=reefsliderRail$(num)] at @s run function core:specialweapons/reefslider/armorstand_tick {num:$(num),color:$(color)}

#execute if score @s useSpecialWeapon matches 120.. run return fail

#プレイヤーを動かす
$execute if score @s useSpecialWeapon matches ..130 as @n[type=item_display,tag=reefsliderReef$(num)] at @s run function core:specialweapons/reefslider/reef_tick {num:$(num),color:$(color)}
execute if score @s useSpecialWeapon matches 130 run scoreboard players set @s isInvincible 1

$execute if score @s useSpecialWeapon matches ..1 run kill @e[type=item_display,tag=reefsliderReef$(num)]
$execute if score @s useSpecialWeapon matches ..1 run kill @e[type=armor_stand,tag=reefsliderRail$(num)]
$execute if score @s useSpecialWeapon matches ..1 run kill @e[type=block_display,tag=rail$(num)]