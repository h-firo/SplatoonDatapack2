say x
execute as @p[distance=..0.5] unless items entity @s hotbar.0 emerald[item_model=rainmaker] run return fail
execute as @p[distance=..0.5] run function core:deaths/lose_rainmaker with storage core: rpplayer

#演出
particle cloud ~ ~ ~ 0.7 0.7 0.7 0.1 7 force @a
particle flash{color:[1,1,1,0.1]} ~ ~ ~ 0 0 0 0 1 force @a
playsound block.note_block.pling master @a ~ ~ ~ 1 1.5

execute if score @p[distance=..0.5] team = team1 participationTeam run scoreboard players set team1 checkPoint 1
execute if score @p[distance=..0.5] team = team2 participationTeam run scoreboard players set team2 checkPoint 1

#kill
kill @s