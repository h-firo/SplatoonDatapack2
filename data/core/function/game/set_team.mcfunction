#各チーム最大人数設定
tag @a remove alreadyTeamSet
scoreboard players set team1 teamMemberCount 0
scoreboard players set team2 teamMemberCount 0
scoreboard players operation max teamMemberCount = count playerCount
scoreboard players operation max teamMemberCount /= 2 num

function core:game/set_team/loop