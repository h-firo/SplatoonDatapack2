$execute at @n[tag=squidBeakon,tag=canJumpBeakon$(owner)_$(id)] run summon marker ~ ~ ~ {Tags:["jumpTarget$(owner)"]}

#ジャンプマーカー
$function core:actions/superjump/jump_marker with storage player: $(owner)

$execute as @a[level=$(owner)] at @s run function core:actions/superjump/jump with entity @s
kill @s