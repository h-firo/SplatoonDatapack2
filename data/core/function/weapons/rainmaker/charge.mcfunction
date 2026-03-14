scoreboard players set @s maxChargeValue 20

#チャージ
scoreboard players add @s charge 1
execute if score @s charge > @s maxChargeValue run scoreboard players operation @s charge = @s maxChargeValue

#チャージ音
execute if score @s charge = @s maxChargeValue unless score @s charged matches 1 run playsound block.note_block.chime master @s ~ ~ ~ 1 2

#チャージ済みにする
execute if score @s charge = @s maxChargeValue unless score @s charged matches 1 run scoreboard players set @s charged 1