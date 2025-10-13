#イカになれた？
execute as @a if predicate core:is_sneaking at @s run function tutorial:action/squid
execute unless entity @a[scores={tutorial.canSquid=0}] run function tutorial:mode_add