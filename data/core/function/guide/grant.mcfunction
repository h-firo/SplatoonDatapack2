execute if score @s isEnableGuide matches 0 run return fail

#進捗達成
$advancement grant @s only core:guide/$(category)/$(name)

#function実行
$function core:guide/$(category)/$(name)

#音
playsound block.note_block.guitar master @s ~ ~ ~ 2 1
playsound block.note_block.guitar master @s ~ ~ ~ 2 1
playsound block.note_block.guitar master @s ~ ~ ~ 2 1