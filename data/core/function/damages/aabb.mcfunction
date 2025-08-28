#ここですべての攻撃を管理

#条件に一致するエンティティをタグ付け
$execute positioned ~$(offset) ~$(offset) ~$(offset) as @e[dx=0,dy=0,dz=0,tag=player,tag=!attack$(num)] positioned ~$(shift) ~$(shift) ~$(shift) if entity @s[dx=0,dy=0,dz=0] unless score @s team matches $(team) run tag @s add attackTarget$(num)
#$execute positioned ~$(offset) ~$(offset) ~$(offset) as @e[dx=0,dy=0,dz=0,tag=player,tag=!attack$(num)] positioned ~$(shift) ~$(shift) ~$(shift) if entity @s[dx=0,dy=0,dz=0] unless score @s team matches $(team) run effect give @s minecraft:glowing 1 0 true

#ダメージ
$execute as @e[tag=attackTarget$(num)] run scoreboard players remove @s health $(damage)

#効果音
$execute at @e[tag=attackTarget$(num)] as @a unless entity @s[level=$(owner)] run playsound entity.player.hurt master @s ~ ~ ~ $(volume)
$execute if entity @e[tag=attackTarget$(num)] as @a[level=$(owner)] at @s run playsound entity.player.hurt master @s ~ ~ ~ $(volume)

#タグ
$tag @e[tag=attackTarget$(num)] add attack$(num)
$tag @e[tag=attackTarget$(num)] remove attackTarget$(num)

#対物
$execute if entity @s[tag=objAttack] run scoreboard players remove @n[nbt={data:{num:$(objNum)}}] objDamage $(objDamage)
execute if entity @s[tag=objAttack] run playsound block.vault.hit master @a ~ ~ ~ 0.6 1

execute if entity @e[tag=objAttack] run kill @s