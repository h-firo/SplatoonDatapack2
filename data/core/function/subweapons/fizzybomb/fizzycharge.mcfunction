#タンサンチャージ
execute if score @s fizzyCharge matches 400.. unless score @s playFizzySound matches 2.. run function core:subweapons/fizzybomb/fizzysound {pitch:2.0,flag:2}
execute if score @s fizzyCharge matches 400.. run return run scoreboard players set @s fizzyCharge 400
scoreboard players add @s fizzyCharge 1
execute if score @s fizzyCharge matches 200.. unless score @s playFizzySound matches 1.. run function core:subweapons/fizzybomb/fizzysound {pitch:1.3,flag:1}
execute if items entity @s weapon.mainhand * run return fail
execute if predicate core:is_jump run scoreboard players add @s fizzyCharge 2
execute if predicate core:is_moving run scoreboard players add @s fizzyCharge 2