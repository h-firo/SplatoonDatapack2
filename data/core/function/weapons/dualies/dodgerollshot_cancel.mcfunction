#射撃キャンセル
$data modify storage shot_temp: $(num).FireRate set from storage player: $(num).weapon.FireRate
$data modify storage shot_temp: $(num).DamageAT set from storage player: $(num).weapon.DamageAT
item modify entity @s hotbar.0 {function:"set_components",components:{consumable:{consume_seconds:100,animation:"spyglass",sound:"entity.tropical_fish.ambient",has_consume_particles:false}}}
$scoreboard players set @s dodgerollCooldown $(StopRollTime)
scoreboard players set @s dualiesLR 0
scoreboard players set @s dodgerollCount 0
attribute @s movement_speed modifier remove dodgeroll
scoreboard players set @s isDodgeRollShot 0