execute if predicate core:is_onground run scoreboard players set @s blastMode 0
execute if predicate core:is_jump if score @s blastMode matches 0 run playsound block.note_block.bit master @a ~ ~ ~ 1 2
execute if predicate core:is_jump run scoreboard players set @s blastMode 1