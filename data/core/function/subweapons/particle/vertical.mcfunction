$particle block{block_state:{Name:"$(color)_concrete"}} ^ ^ ^$(radius) 0 0 0 0 1 force @a
$particle block{block_state:{Name:"$(color)_concrete"}} ^ ^ ^-$(radius) 0 0 0 0 1 force @a
rotate @s ~ ~10
$execute unless entity @s[x_rotation=90] at @s run function core:subweapons/particle/vertical {radius:$(radius),color:$(color)}
execute if entity @s[x_rotation=90] at @s run rotate @s ~ -90