execute store result storage temp: pNum int 1 run experience query @s levels
clear @s
$data modify storage temp: weapon set value $(weapon)
$data modify storage temp: parts set value $(parts)
function command:parts_macro with storage temp: