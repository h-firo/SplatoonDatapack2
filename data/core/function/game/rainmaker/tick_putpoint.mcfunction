#パーティクル
particle dust{color:[1,1,1],scale:1.2} ~ ~ ~ 0 0 0 0 1 force @a

#その場にガチホコが来たらガチホコを落とさせる
execute if entity @p[distance=..0.5] if data entity @s {data:{Type:"Checkpoint"}} run return run function core:game/rainmaker/checkpoint
execute if entity @p[distance=..0.5] if data entity @s {data:{Type:"Goal"}} run return run function core:game/rainmaker/goal