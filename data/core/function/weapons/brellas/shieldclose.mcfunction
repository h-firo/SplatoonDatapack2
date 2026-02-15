#武器の見た目を変更
$item modify entity @s hotbar.0 {function:"set_components",components:{item_model:"$(name)"}}

scoreboard players set @s isGuard 0