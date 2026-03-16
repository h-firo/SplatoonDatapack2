#ガチホコを落とす
function core:game/rainmaker/set_rainmaker

#武器を戻す
$function command:set_weapon {category:$(category),weapon:$(name)}

#移動速度を戻す
attribute @s movement_speed modifier remove rainmaker