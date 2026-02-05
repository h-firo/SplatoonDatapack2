$function core:subweapons/particle/vertical {radius:$(radius),color:$(color)}
rotate @s ~10 ~
$execute unless entity @s[y_rotation=0..9] at @s run function core:subweapons/particle/horizontal {radius:$(radius),color:$(color)}