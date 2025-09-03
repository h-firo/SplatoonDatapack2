#team1なら、team2の色をストレージに格納
$execute if score @s team = team1 participationTeam run data modify storage player: $(XpLevel).opponent set from storage core: team2

#team2なら、team1の色をストレージに格納
$execute if score @s team = team2 participationTeam run data modify storage player: $(XpLevel).opponent set from storage core: team1

#格納した情報をもとにfunctionを実行
$function core:game/opponent_color_macro with storage player: $(XpLevel)