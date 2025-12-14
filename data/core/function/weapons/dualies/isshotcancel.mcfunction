#移動キーが入力されていたら射撃をキャンセル
execute if predicate core:push_space run return fail
$execute if predicate core:key_input/forward run function core:weapons/dualies/dodgerollshot_cancel with storage shot_temp: $(XpLevel)
$execute if predicate core:key_input/backward run function core:weapons/dualies/dodgerollshot_cancel with storage shot_temp: $(XpLevel)
$execute if predicate core:key_input/left run function core:weapons/dualies/dodgerollshot_cancel with storage shot_temp: $(XpLevel)
$execute if predicate core:key_input/right run function core:weapons/dualies/dodgerollshot_cancel with storage shot_temp: $(XpLevel)