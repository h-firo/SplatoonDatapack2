scoreboard players set num resetNum 0 
execute store result storage core: resetNum int 1 run scoreboard players get num resetNum

function core:game/reset/shotnum_loop with storage core: