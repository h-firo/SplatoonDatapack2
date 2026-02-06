#ここですべての攻撃を管理

#条件に一致するエンティティをタグ付け
$data merge storage shot_ {$(owner):{distance:$(distance),team:$(team),num:$(num)}}
$execute store result storage shot_ $(owner).distance2 float 2.0 run data get storage shot_ $(owner).distance
$function core:damages/aabb with storage shot_ $(owner)
#$execute as @e[distance=..$(distance),tag=player] unless score @s lastHit matches $(num) unless score @s team matches $(team) run tag @s add attackTarget$(num)

#ダメージ
#$execute as @e[tag=attackTarget$(num)] unless score @s isInvincible matches 1 run scoreboard players remove @s health $(damage)
$execute as @e[tag=attackTarget$(num)] unless score @s isInvincible matches 1 run function core:damages/remove_health {value:$(damage),type:$(type),killer:$(owner),num:1}

#効果音
#無敵？
$execute as @e[tag=attackTarget$(num)] if score @s isInvincible matches 1 at @s run playsound block.amethyst_block.place master @a ~ ~ ~ $(volume)
$execute as @e[tag=attackTarget$(num)] if score @s isInvincible matches 1 at @s run tag @e[tag=attackTarget$(num)] remove attackTarget$(num)
#無敵ではない
$execute at @e[tag=attackTarget$(num)] as @a unless entity @s[level=$(owner)] run playsound entity.player.hurt master @s ~ ~ ~ $(volume)
$execute if entity @e[tag=attackTarget$(num)] as @a[level=$(owner)] at @s run playsound entity.player.hurt master @s ~ ~ ~ $(volume)

#タグ
$scoreboard players set @e[tag=attackTarget$(num)] lastHit $(num)
$tag @e[tag=attackTarget$(num)] remove attackTarget$(num)

#対物
$execute if entity @s[tag=objAttack] run scoreboard players remove @n[nbt={data:{num:$(objNum)}}] objDamage $(objDamage)
$execute if entity @s[tag=objAttack] run scoreboard players remove @n[nbt={data:{bombNum:$(objNum)}}] objDamage $(objDamage)
execute if entity @s[tag=objAttack] run playsound block.vault.hit master @a ~ ~ ~ 0.6 1

execute if entity @e[tag=objAttack] run kill @s