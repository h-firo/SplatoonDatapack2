execute store result storage temp: pNum int 1 run experience query @s levels
clear @s
$data modify storage temp: category set value $(category)
$data modify storage temp: weapon set value $(weapon)
function command:str_macro with storage temp: