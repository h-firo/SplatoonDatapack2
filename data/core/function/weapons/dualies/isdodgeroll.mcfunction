#（まだスライドしていない and 移動中) or (スライド回数が残っている and クールダウンが終了している) ならスライド
execute unless score @s dodgerollCount matches 1.. if predicate core:is_moving run return run scoreboard players set @s isDodgeRoll 1
#最大スライド回数を取得
$execute store result score @s maxDodgerollCount run data get storage shot_temp: $(XpLevel).MaxRolls 1
execute if score @s dodgerollCount < @s maxDodgerollCount unless score @s dodgerollCooldown matches 1.. run scoreboard players set @s isDodgeRoll 1