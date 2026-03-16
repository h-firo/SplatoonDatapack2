scoreboard players set isWaterLevelDrop stageGimmick 1
execute as @a at @s run playsound custom:mahimahi master @s ~ ~ ~ 1 1
tellraw @a {"text":"水位が下がる！！",color:aqua,bold:true}
fill 125 -58 -249 250 -58 -360 air replace water