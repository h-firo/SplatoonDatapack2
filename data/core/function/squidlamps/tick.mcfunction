#このプレイヤーが生存しているか死亡しているか判定
$execute if score @s resurrectionTime matches 1.. run data merge storage squidlamps {Active:{$(squidlamp):"death"}}
$execute unless score @s resurrectionTime matches 1.. run data merge storage squidlamps {Active:{$(squidlamp):"alive"}}