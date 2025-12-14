attribute @s gravity base set 1

#スライドするための防具を着せる
item replace entity @s armor.chest with iron_chestplate[enchantments={"core:dodgeroll/left":1},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]

#タイマーセット
$scoreboard players set @s dodgerollTime $(RollTime)
$scoreboard players set @s dodgerollCooldown $(RollCooldown)