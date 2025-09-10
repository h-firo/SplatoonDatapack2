#チャージ時間あたりのチャージゲージ変化量を計算
$scoreboard players set @s maxChargeValue $(ChargeTime)

#チャージリセット
scoreboard players set @s charge 0
scoreboard players set @s charged 0
scoreboard players set @s snipewriterBullet 0

#表示
function core:weapons/chargers/charge_display