#チームに所属させる
$execute as @a[tag=teamSet] run function command:join_team {team:$(team2)}
tag @a[tag=teamSet] add alreadyTeamSet
tag @a[tag=teamSet] remove teamSet
scoreboard players add team2 teamMemberCount 1
execute if entity @a[tag=!alreadyTeamSet] run function core:game/set_team/loop