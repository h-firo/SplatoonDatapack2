#インクを発射できた？
execute as @a if score @s rightHold matches 1.. at @s run function tutorial:action/shotink
execute unless entity @a[scores={tutorial.inkShot=0}] run function tutorial:mode_add