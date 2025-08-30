#横方向
function core:specialweapons/reefslider/explosion/vertical with entity @s data
rotate @s ~10 ~
execute unless entity @s[y_rotation=0..9] at @s run function core:specialweapons/reefslider/explosion/horizontal