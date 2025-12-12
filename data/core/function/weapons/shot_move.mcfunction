$execute if score @s shotDelay matches 1.. run return run attribute @s movement_speed modifier add shot_move $(HSpeed) add_value
$execute if entity @s[tag=Click] if score @s preDelay matches 1.. run return run attribute @s movement_speed modifier add shot_move $(HSpeed) add_value
$execute if entity @s[tag=Click] run function core:weapons/rollers/rolling_move with storage shot_temp: $(num)