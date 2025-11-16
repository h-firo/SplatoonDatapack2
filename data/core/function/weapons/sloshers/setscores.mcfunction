#撃った最初しか実行されないスコア系統を設定する処理
scoreboard players set @s slosherTime 0
$scoreboard players remove @s ink $(Ink)
$scoreboard players set @s shotDelay $(FireRate)
$scoreboard players add @s accuracy $(Blur)
$execute if score @s accuracy matches $(MaxBlur).. run scoreboard players set @s accuracy $(MaxBlur)