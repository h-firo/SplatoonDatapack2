execute if data entity @s {OnGround:false} run return fail

#何かしらのバグで空中に浮いていたら、石を下に置く
#execute unless block ~ ~-1 ~ #core:can_sticking run return run setblock ~ ~-1 ~ stone

#正面がブロックだったら、レールを途切れさせる
execute if block ^ ^ ^1 #core:can_sticking run return run setblock ~ ~ ~ air

#周りに既にレールがある場合、接続を防ぐためにレールを消す
#execute if block ^1 ^ ^ rail run setblock ^1 ^ ^ air destroy
#execute if block ^-1 ^ ^ rail run setblock ^1 ^ ^ air destroy

#移動
tp @s ^ ^ ^1
setblock ~ ~ ~ rail