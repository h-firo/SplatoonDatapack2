$scoreboard players set @s preDelay $(PreGap)
$execute if data storage player: {$(num):{weapon:{name:"flingzaroller"}}} if predicate core:else_onground run scoreboard players set @s preDelay 15