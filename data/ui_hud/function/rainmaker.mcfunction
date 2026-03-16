execute if score @s team = team1 participationTeam unless score team1 checkPoint matches 1 run \
title @s actionbar [{"text":"カンモンに置け！！　残り",bold:true,color:red},{"score":{name:"@s",objective:"rainmakerTimerDisplay"}}]
execute if score @s team = team1 participationTeam if score team1 checkPoint matches 1 run \
title @s actionbar [{"text":"ゴールに置け！！　残り",bold:true,color:red},{"score":{name:"@s",objective:"rainmakerTimerDisplay"}}]
execute if score @s team = team2 participationTeam unless score team2 checkPoint matches 1 run \
title @s actionbar [{"text":"カンモンに置け！！　残り",bold:true,color:red},{"score":{name:"@s",objective:"rainmakerTimerDisplay"}}]
execute if score @s team = team2 participationTeam unless score team2 checkPoint matches 1 run \
title @s actionbar [{"text":"ゴールに置け！！　残り",bold:true,color:red},{"score":{name:"@s",objective:"rainmakerTimerDisplay"}}]