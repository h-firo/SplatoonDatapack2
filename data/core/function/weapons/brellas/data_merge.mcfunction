$data merge storage shot_temp: {$(num):{dx:$(dx),dy:$(dy),dz:$(dz),sNum:$(sNum)}}
scoreboard players add num shotNum 1
$execute store result storage shot_temp: $(num).shotNum int 1 run scoreboard players get num shotNum