#ここですべての攻撃を管理

#条件に一致するエンティティをタグ付け
$execute as @e[distance=..$(distance),tag=player,tag=!attack$(num)] unless score @s team matches $(team) run tag @s add attackTarget$(num)

#ダメージ
$execute as @e[tag=attackTarget$(num)] unless score @s isInvincible matches 1 run scoreboard players remove @s health $(damage)

#効果音
#無敵？
$execute as @e[tag=attackTarget$(num)] if score @s isInvincible matches 1 at @s run playsound block.amethyst_block.place master @a ~ ~ ~ $(volume)
$execute as @e[tag=attackTarget$(num)] if score @s isInvincible matches 1 at @s run tag @e[tag=attackTarget$(num)] remove attackTarget$(num)
#無敵ではない
$execute at @e[tag=attackTarget$(num)] as @a unless entity @s[level=$(owner)] run playsound entity.player.hurt master @s ~ ~ ~ $(volume)
$execute if entity @e[tag=attackTarget$(num)] as @a[level=$(owner)] at @s run playsound entity.player.hurt master @s ~ ~ ~ $(volume)

#タグ
$tag @e[tag=attackTarget$(num)] add attack$(num)
$tag @e[tag=attackTarget$(num)] remove attackTarget$(num)

#対物
$execute if entity @s[tag=objAttack] run scoreboard players remove @n[nbt={data:{num:$(objNum)}}] objDamage $(objDamage)
$execute if entity @s[tag=objAttack] run scoreboard players remove @n[nbt={data:{bombNum:$(objNum)}}] objDamage $(objDamage)
execute if entity @s[tag=objAttack] run playsound block.vault.hit master @a ~ ~ ~ 0.6 1

execute if entity @e[tag=objAttack] run kill @s