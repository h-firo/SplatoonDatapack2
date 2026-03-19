execute if score @s alreadyPreDelaySet matches 1 run return fail
execute if score @s noPreDelaySet matches 1.. run return run scoreboard players remove @s noPreDelaySet 1
$scoreboard players set @s preDelay $(PreGap)
$execute if data storage player: {$(num):{weapon:{name:"flingzaroller"}}} if predicate core:else_onground run scoreboard players set @s preDelay 15
scoreboard players set @s alreadyPreDelaySet 1