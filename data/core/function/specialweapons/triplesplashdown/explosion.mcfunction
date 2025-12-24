#爆発
particle explosion ~ ~ ~ 1 1 1 0 3

#地面塗り
$fill ~-3 ~-2 ~-3 ~3 ~3 ~3 $(color)_concrete replace #core:can_inking

#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage special_temp: $(num).shotNum int 1 run scoreboard players get num shotNum

#ダメージ処理
$function core:specialweapons/triplesplashdown/explosion_damage with storage shot_temp: $(num)