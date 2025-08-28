#ランダムチーム決め(全員決まるまでループ)
tag @r[tag=!alreadyTeamSet] add teamSet
execute if score team1 teamMemberCount >= max teamMemberCount run return run function core:game/set_team/assign_team2 with storage core:
function core:game/set_team/assign_team1 with storage core:
