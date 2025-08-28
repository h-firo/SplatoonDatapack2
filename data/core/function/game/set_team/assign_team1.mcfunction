#チームに所属させる
$execute as @a[tag=teamSet] run function command:join_team {team:$(team1)}
tag @a[tag=teamSet] add alreadyTeamSet
tag @a[tag=teamSet] remove teamSet
scoreboard players add team1 teamMemberCount 1
function core:game/set_team/loop