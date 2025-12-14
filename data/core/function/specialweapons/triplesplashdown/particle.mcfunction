$particle end_rod ^ ^ ^$(radius) 0 0 0 0 1 force
rotate @s ~10 ~
$execute unless entity @s[y_rotation=0..9] at @s run function core:specialweapons/triplesplashdown/particle {radius:$(radius)}