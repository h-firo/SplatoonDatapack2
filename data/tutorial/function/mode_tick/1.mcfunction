#イカ状態で移動できた？
execute as @a if predicate core:is_sneaking if predicate core:is_moving at @s run function tutorial:action/movesquid
execute as @a if predicate core:is_sprint if predicate core:is_moving at @s run function tutorial:action/movesquid
execute unless entity @a[scores={tutorial.moveSquid=0}] run function tutorial:mode_add