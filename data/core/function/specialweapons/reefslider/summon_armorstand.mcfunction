#アマスタ
$summon armor_stand $(posX) ~ $(posZ) {Tags:["rail$(num)"],Invisible:false}

#トロッコ
$summon minecart $(posX) ~ $(posZ) {Tags:["float$(num)"]}
$ride @s mount @n[type=minecart,tag=float$(num)]