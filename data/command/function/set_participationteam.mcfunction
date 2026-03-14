$scoreboard players set team$(team) participationTeam $(join)

execute store result storage core: team1 int 1 run scoreboard players get team1 participationTeam
execute store result storage core: team2 int 1 run scoreboard players get team2 participationTeam

#登場色割り当て
function core:game/assign_color with storage core:

#相手色の割り当て
execute as @a run function core:game/set_opponent_color with entity @s