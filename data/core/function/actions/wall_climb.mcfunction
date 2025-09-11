#射撃をしだしたら処理を中断
execute if score @s rightHold matches 1.. run return run function core:actions/climb_stop
execute if score @s shotDelay matches 1.. run return run function core:actions/climb_stop
execute if score @s charged matches 1.. run return run function core:actions/climb_stop

#四方に壁があるか確認
$execute if block ~1 ~ ~ $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb {color:$(color)}
$execute if block ~-1 ~ ~ $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb {color:$(color)}
$execute if block ~ ~ ~1 $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb {color:$(color)}
$execute if block ~ ~ ~-1 $(color)_concrete if predicate core:is_sneaking run return run function core:actions/climb {color:$(color)}

function core:actions/climb_stop