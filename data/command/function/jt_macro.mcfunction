$scoreboard players set @s team $(team)
$data modify storage player: $(pNum).team set value $(team)
$data modify storage player: $(pNum).color set from storage team_color: $(team)

#shot_temp:に反映させる処理
execute store result storage temp: pNum int 1 run experience query @s levels
clear @s
$data modify storage temp: $(pNum).category set from storage player: $(pNum).category
$data modify storage temp: $(pNum).weapon set from storage player: $(pNum).weapon.name
function command:st_macro with storage temp:

$tellraw @s[tag=operator] {"text":"$(pNum)は$(team)チームに所属しました"}