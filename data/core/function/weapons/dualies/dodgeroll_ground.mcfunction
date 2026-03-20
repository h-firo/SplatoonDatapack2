#スライドするための防具を着せる
$execute if predicate core:key_input/forward run \
return run item replace entity @s armor.chest with iron_chestplate[enchantments={"core:dodgeroll_ground/forward":$(RollSpeed)},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]
$execute if predicate core:key_input/right run \
return run item replace entity @s armor.chest with iron_chestplate[enchantments={"core:dodgeroll_ground/right":$(RollSpeed)},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]
$execute if predicate core:key_input/left run \
return run item replace entity @s armor.chest with iron_chestplate[enchantments={"core:dodgeroll_ground/left":$(RollSpeed)},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]
$execute if predicate core:key_input/backward run \
return run item replace entity @s armor.chest with iron_chestplate[enchantments={"core:dodgeroll_ground/backward":$(RollSpeed)},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]