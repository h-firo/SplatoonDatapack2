#teamによって処理を変える
say 1
execute if score @s team = team1 participationTeam run function core:game/player_set/assign_pos_macro {team:1}
execute if score @s team = team2 participationTeam run function core:game/player_set/assign_pos_macro {team:2}