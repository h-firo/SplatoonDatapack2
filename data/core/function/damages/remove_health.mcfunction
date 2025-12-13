#スコアボードから値を減らす
$scoreboard players remove @s health $(value)

#死亡したとき、メッセージを出す
execute if score @s health matches 1.. run return fail
execute if score @s isSayDeathMessage matches 1 run return fail
$data merge storage deathmessage {DeathMesseageType:"$(type)",Killer:"$(killer)"}
function core:deaths/death_message with storage deathmessage