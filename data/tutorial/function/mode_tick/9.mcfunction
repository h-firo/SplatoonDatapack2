#スペシャル発動した？
execute as @a if score @s useSpecialWeapon matches 1.. at @s run function tutorial:action/usespecial
execute unless entity @a[scores={tutorial.specialActive=0}] run function tutorial:mode_add