attribute @s gravity base set 1
scoreboard players add @s dodgerollCount 1
scoreboard players set @s preDelay 100
$scoreboard players remove @s ink $(RollInk)
$fill ~ ~-1 ~ ~ ~-1 ~ $(color)_concrete replace #core:can_inking

#タイマーセット
$scoreboard players set @s dodgerollTime $(RollTime)
$scoreboard players set @s dodgerollCooldown $(RollCooldown)

#演出
$particle block{block_state:"minecraft:$(color)_concrete_powder"} ~ ~0.1 ~ 0 0 0 0 10 force
playsound item.bucket.empty_fish master @a ~ ~ ~ 2 2
playsound entity.fishing_bobber.throw master @a ~ ~ ~ 0.5 0.3

#スライドするための防具を着せる
$execute if predicate core:key_input/forward run \
return run item replace entity @s armor.chest with iron_chestplate[enchantments={"core:dodgeroll/forward":$(RollSpeed)},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]
$execute if predicate core:key_input/right run \
return run item replace entity @s armor.chest with iron_chestplate[enchantments={"core:dodgeroll/right":$(RollSpeed)},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]
$execute if predicate core:key_input/left run \
return run item replace entity @s armor.chest with iron_chestplate[enchantments={"core:dodgeroll/left":$(RollSpeed)},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]
$execute if predicate core:key_input/backward run \
return run item replace entity @s armor.chest with iron_chestplate[enchantments={"core:dodgeroll/backward":$(RollSpeed)},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]