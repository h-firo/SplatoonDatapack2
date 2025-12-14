#移動キーが入力されていたら射撃をキャンセル
execute if predicate core:key_input/forward run function core:weapons/dualies/dodgerollshot_cancel with entity @s
execute if predicate core:key_input/backward run function core:weapons/dualies/dodgerollshot_cancel with entity @s
execute if predicate core:key_input/left run function core:weapons/dualies/dodgerollshot_cancel with entity @s
execute if predicate core:key_input/right run function core:weapons/dualies/dodgerollshot_cancel with entity @s