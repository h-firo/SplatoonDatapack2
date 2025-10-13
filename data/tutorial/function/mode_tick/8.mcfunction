#スペシャルポイントがたまった？
execute as @a if score @s specialPointPerMax matches 100.. at @s run function tutorial:action/specialpoint
execute unless entity @a[scores={tutorial.specialPoint=0}] run function tutorial:mode_add