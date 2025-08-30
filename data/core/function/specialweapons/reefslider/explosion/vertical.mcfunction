#縦方向
#攻撃判定
function core:specialweapons/reefslider/explosion/ind_plus with entity @s data
function core:specialweapons/reefslider/explosion/ind_minus with entity @s data
#塗り判定
function core:specialweapons/reefslider/explosion/color_ind_plus with entity @s data
function core:specialweapons/reefslider/explosion/color_ind_minus with entity @s data
rotate @s ~ ~10
execute unless entity @s[x_rotation=90] at @s run function core:specialweapons/reefslider/explosion/vertical with entity @s data
execute if entity @s[x_rotation=90] at @s run tp @s ~ ~ ~ ~ -90