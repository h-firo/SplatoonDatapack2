$execute at @p[tag=player,nbt={UUID:$(uuid)}] run summon marker ~ ~ ~ {Tags:["jumpTarget$(owner)"]}

#ジャンプマーカー
$function core:actions/superjump/jump_marker with storage player: $(owner)

$execute as @a[level=$(owner)] at @s run function core:actions/superjump/jump with entity @s
kill @s