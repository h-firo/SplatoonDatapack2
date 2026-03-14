$execute if block ~ ~ ~ #core:can_inking run setblock ~ ~ ~ minecraft:$(color)_concrete
$particle block{block_state:{Name:"$(color)_concrete"}} ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[distance=..5] positioned ^ ^ ^-1 run function core:specialweapons/reefslider/explosion/color_ind_minus with entity @s data