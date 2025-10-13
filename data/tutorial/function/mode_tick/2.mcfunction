#インクの中に潜って移動できた？
execute as @a if score @s isSprint matches 1 if predicate core:is_moving at @s run function tutorial:action/move_ink
execute unless entity @a[scores={tutorial.moveInk=0}] run function tutorial:mode_add