#射撃キャンセル
$data modify storage shot_temp: $(num).FireRate set from storage player: $(num).weapon.FireRate
$data modify storage shot_temp: $(num).DamageAT set from storage player: $(num).weapon.DamageAT
item replace entity @s hotbar.0 with emerald[consumable={consume_seconds:100,animation:"spyglass",sound:"entity.tropical_fish.ambient",has_consume_particles:false},custom_data={item:"weapon"},\
                item_model="splatdualies",item_name={translate:item.weapon.splatdualies},custom_model_data={strings:["0"]},use_effects={speed_multiplier:0.72}] 1
$scoreboard players set @s dodgerollCooldown $(StopRollTime)
scoreboard players set @s dualiesLR 0
scoreboard players set @s dodgerollCount 0
attribute @s movement_speed modifier remove dodgeroll
scoreboard players set @s isDodgeRollShot 0