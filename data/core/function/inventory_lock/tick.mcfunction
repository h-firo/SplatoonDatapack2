#Fキーpush用判定アイテムがメインハンドにある？
execute if items entity @s weapon.mainhand *[custom_data={item:"offhand"}] run return run function item:jump_menu/open with entity @s

#メインウェポン
$execute unless items entity @s hotbar.0 *[custom_data={item:"weapon"}] run function core:inventory_lock/mainweapon with storage shot_temp: $(XpLevel)
execute store result score @s weaponCount run clear @s *[custom_data={item:"weapon"}] 0
$execute if score @s weaponCount matches 2.. run function core:inventory_lock/mainweapon with storage shot_temp: $(XpLevel)

#スペシャル使用用アイテム
$execute if score @s useSpecialWeapon matches ..0 unless items entity @s hotbar.1 *[custom_data={item:"specialUse"}] run function core:inventory_lock/specialuse with storage player: $(XpLevel)
execute store result score @s weaponCount run clear @s *[custom_data={item:"specialUse"}] 0
$execute if score @s weaponCount matches 2.. run function core:inventory_lock/specialuse with storage player: $(XpLevel)

#スペシャルウェポン
$execute if score @s useSpecialWeapon matches 1.. unless items entity @s hotbar.1 *[custom_data={item:"specialweapon"}] run function core:inventory_lock/specialweapon with storage player: $(XpLevel)
execute store result score @s weaponCount run clear @s *[custom_data={item:"specialweapon"}] 0
$execute if score @s weaponCount matches 2.. run function core:inventory_lock/specialweapon with storage player: $(XpLevel)

#Fキーpush用判定アイテム
execute unless items entity @s weapon.offhand * run item replace entity @s weapon.offhand with gold_nugget[custom_data={item:"offhand"},tooltip_display={hide_tooltip:true},item_model="none"]