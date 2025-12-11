#データ更新
$data merge storage player: {$(pNum):{Parts:{$(weapon):{$(parts):true}}}}

#揃っているか？
function command:parts_assemble with entity @s

$tellraw @a[tag=operator] {"text":"$(pNum)に「$(weapon)」のパーツ「$(parts)」を付与しました"}