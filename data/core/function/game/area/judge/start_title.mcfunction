execute if score team1 areaCount < team1 areaLowestCount run scoreboard players operation team1 areaLowestCount = team1 areaCount
execute if score team2 areaCount < team2 areaLowestCount run scoreboard players operation team2 areaLowestCount = team2 areaCount

title @a times 10 40 10
$title @a title [{"text":"[",bold:true,color:gray},{"text":"100","color":"$(text1)",bold:false},{"text":"　VS　",bold:true,color:gray},{"text":"100","color":"$(text2)",bold:false},{"text":"]",bold:true,color:gray}]