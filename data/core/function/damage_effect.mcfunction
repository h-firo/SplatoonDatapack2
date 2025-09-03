execute if score @s health matches 100 run item replace entity @s armor.head with air
$execute if score @s health matches 60..99 run item replace entity @s armor.head with \
burn_pottery_sherd[equippable={slot:"head",equip_sound:"entity.tropical_fish.ambient",asset_id:"iron",camera_overlay:"damage_effect/$(color)/$(color)1",equip_on_interact:true,damage_on_hurt:false}] 1
$execute if score @s health matches 30..59 run item replace entity @s armor.head with \
burn_pottery_sherd[equippable={slot:"head",equip_sound:"entity.tropical_fish.ambient",asset_id:"iron",camera_overlay:"damage_effect/$(color)/$(color)2",equip_on_interact:true,damage_on_hurt:false}] 1
$execute if score @s health matches 10..29 run item replace entity @s armor.head with \
burn_pottery_sherd[equippable={slot:"head",equip_sound:"entity.tropical_fish.ambient",asset_id:"iron",camera_overlay:"damage_effect/$(color)/$(color)3",equip_on_interact:true,damage_on_hurt:false}] 1