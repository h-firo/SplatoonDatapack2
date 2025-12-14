#スライドをキャンセルして、射撃モードへ
scoreboard players set @s dodgerollTime -1
scoreboard players set @s preDelay 0
attribute @s gravity base reset
$scoreboard players set @s dodgeRollShotTimer $(StopTime)
$attribute @s movement_speed modifier add dodgeroll $(HRollSpeed) add_value
$data modify storage shot_temp: $(num).FireRate set value $(RollFireRate)
$data modify storage shot_temp: $(num).DamageAT set value $(RollDamageAT)
item modify entity @s hotbar.0 {function:"set_components",components:{consumable:{consume_seconds:100,animation:"bow",sound:"entity.tropical_fish.ambient",has_consume_particles:false}}}
scoreboard players set @s dualiesLR -1
scoreboard players set @s isDodgeRollShot 1
item replace entity @s armor.chest with air