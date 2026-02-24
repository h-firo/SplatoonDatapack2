#前にチャージした値よりも大きければリセット可能
execute if score @s splatlingsDurationTime >= @s _sdt run return 1
return 0