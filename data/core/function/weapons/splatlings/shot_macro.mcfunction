#タイマー減少
scoreboard players set @s preDelay 0
scoreboard players set @s shotDelay 10
scoreboard players remove @s splatlingsDurationTime 1
function core:weapons/splatlings/duration_display
execute if score @s splatlingsDurationTime matches 0 run title @s title {text:"oo\uE500",font:"ui",shadow_color:16777215}

#Delay処理
scoreboard players remove @s splatlingsShotDelay 1
execute if score @s splatlingsShotDelay matches 1.. run return fail

#インクが足りているか？
$execute store result score @s isInkEnough run function core:is_inkenough with storage shot_temp: $(XpLevel)
execute if score @s isInkEnough matches -1 run scoreboard players set @s splatlingsDurationTime 0
execute if score @s isInkEnough matches -1 run return fail

#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(XpLevel).shotNum int 1 run scoreboard players get num shotNum

#種類によって分ける
execute if items entity @s weapon.mainhand *[item_model="ballpointsplatling"] run return run function core:weapons/splatlings/ballpointsplatling/judge_mode with entity @s

$function core:weapons/splatlings/shot with storage shot_temp: $(XpLevel)