#スポナー位置を割り当て
$tp @s $(x) $(y) $(z) $(yaw) 0
$scoreboard players set @s spanwerRotate $(yaw)
tag @s remove playerSet
tag @s add alreadyPlayerSet