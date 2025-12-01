#ダメージを与える人
$execute as @e[distance=..4,tag=player] unless score @s team matches $(team) run tag @s add attackTarget$(owner)

#ダメージ
$execute as @e[tag=attackTarget$(owner)] unless score @s isInvincible matches 1 run scoreboard players remove @s health 37

#効果音
#無敵？
$execute as @e[tag=attackTarget$(owner)] if score @s isInvincible matches 1 at @s run playsound block.amethyst_block.place master @a ~ ~ ~ 1
$execute as @e[tag=attackTarget$(owner)] if score @s isInvincible matches 1 at @s run tag @e[tag=attackTarget$(owner)] remove attackTarget$(owner)
#無敵ではない
$execute at @e[tag=attackTarget$(owner)] as @a unless entity @s[level=$(owner)] run playsound entity.player.hurt master @s ~ ~ ~ 1
$execute if entity @e[tag=attackTarget$(owner)] as @a[level=$(owner)] at @s run playsound entity.player.hurt master @s ~ ~ ~ 1

$tag @e[tag=attackTarget$(owner)] remove attackTarget$(owner)