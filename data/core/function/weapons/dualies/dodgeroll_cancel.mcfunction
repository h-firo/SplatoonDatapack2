#スライドをキャンセルして、射撃モードへ
scoreboard players set @s dodgerollTime -1
attribute @s gravity base reset
$scoreboard players set @s dodgeRollShotTimer $(StopTime)
$attribute @s movement_speed modifier add dodgeroll $(HRollSpeed) add_value
$data modify storage shot_temp: $(num).FireRate set value $(RollFireRate)
$data modify storage shot_temp: $(num).DamageAT set value $(RollDamageAT)
item replace entity @s hotbar.0 with emerald[consumable={consume_seconds:100,animation:"bow",sound:"entity.tropical_fish.ambient",has_consume_particles:false},custom_data={item:"weapon"},\
                item_model="splatdualies",item_name={translate:item.weapon.splatdualies},custom_model_data={strings:["0"]},use_effects={speed_multiplier:0.72}] 1
scoreboard players set @s dualiesLR -1
scoreboard players set @s isDodgeRollShot 1
item replace entity @s armor.chest with air