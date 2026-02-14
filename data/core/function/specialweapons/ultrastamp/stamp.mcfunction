#前隙
execute unless score @s stampPreDelay matches 10.. run return run scoreboard players add @s stampPreDelay 1

#突進攻撃
#移動
playsound item.bucket.empty_fish master @a ~ ~ ~ 1 1.5
playsound block.sand.place master @a ~ ~ ~ 2 0.7
scoreboard players set @s isInvincible 1
scoreboard players set @s stampMoveDelay 4
execute if predicate core:is_onground run scoreboard players set @s isDodgeRoll 1
execute if predicate core:is_onground run item replace entity @s armor.chest with iron_chestplate[enchantments={"core:ultrastamp":2},enchantment_glint_override=false,equippable={slot:"chest",equip_sound:entity.tropical_fish.ambient}]
#攻撃
$execute positioned ^ ^ ^1 as @e[distance=..1.5,tag=player] unless score @s team matches $(team) run function core:damages/remove_health {value:100,type:"ultrastamp",killer:$(num)}
$execute positioned ^ ^ ^1 as @e[distance=..2.5,tag=player] unless score @s team matches $(team) run function core:damages/remove_health {value:40,type:"ultrastamp",killer:$(num)}
$execute positioned ^ ^ ^1 as @e[distance=..2.5,tag=player] at @s unless score @s team matches $(team) run playsound entity.player.hurt master @a ~ ~ ~ 1
#塗り
$fill ^-1.5 ^ ^1 ^1.5 ^ ^2.5 $(color)_concrete replace #core:can_inking
#演出
$data merge entity @n[type=item_display,tag=ultrastamp$(num)] {transformation:{left_rotation:[20f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0f,0f],scale:[2,2,2]}}
$data merge entity @n[type=item_display,tag=ultrastamp$(num)] {interpolation_duration:4}