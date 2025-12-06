#タイマー減少
scoreboard players remove @s splatlingsDurationTime 1
function core:weapons/splatlings/duration_display
execute if score @s splatlingsDurationTime matches 0 run title @s title {text:"oo\uE500",font:"ui",shadow_color:16777215} 

#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(XpLevel).shotNum int 1 run scoreboard players get num shotNum

$function core:weapons/splatlings/shot with storage shot_temp: $(XpLevel)