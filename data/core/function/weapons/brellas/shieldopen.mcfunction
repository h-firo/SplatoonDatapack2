#ガードできないときは開かない
$execute if score @s cannotGuard matches 1 run return run function core:weapons/brellas/shieldclose with storage shot_temp: $(name)

#武器の見た目を変更
$item modify entity @s hotbar.0 {function:"set_components",components:{item_model:"$(name)_open"}}

scoreboard players set @s isGuard 1