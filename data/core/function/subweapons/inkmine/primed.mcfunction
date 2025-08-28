#範囲内のプレイヤーをタグ付け
$execute as @e[tag=player,distance=..2] unless score @s team matches $(team) run tag @s add inkMine$(bombNum)

#パーティクル
particle flash ~ ~ ~ 0 0 0 0 1 force @a

#音
playsound entity.tnt.primed master @a ~ ~ ~ 2 1.7
playsound block.note_block.iron_xylophone master @a ~ ~ ~ 1 2