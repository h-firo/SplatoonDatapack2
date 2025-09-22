$scoreboard players set @s team $(team)
$data modify storage player: $(pNum).team set value $(team)
$data modify storage player: $(pNum).color set from storage team_color: $(team)
$tellraw @s[tag=operator] {"text":"$(pNum)は$(team)チームに所属しました"}