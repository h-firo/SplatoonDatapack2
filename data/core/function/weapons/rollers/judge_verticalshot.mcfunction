execute if predicate core:is_onground run scoreboard players set @s isVerticalShot 0
execute if predicate core:else_onground run scoreboard players set @s isVerticalShot 1

#ヴァリアブルローラーだったら縦振りを重く設定
$execute if data storage player: {$(num):{weapon:{name:"flingzaroller"}}} if predicate core:else_onground run scoreboard players set @s preDelay 15