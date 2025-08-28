$particle block{block_state:"minecraft:$(color)_stained_glass"} ^ ^ ^2 0 0 0 0 1 force @a[scores={team=$(team)}]
rotate @s ~30 ~
$execute unless entity @s[y_rotation=0..9] at @s run function core:subweapons/inkmine/circle_purticle {color:$(color),team:$(team)}