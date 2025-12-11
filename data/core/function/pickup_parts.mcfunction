#自分が捨てたものではないか？
$execute if data entity @n[type=item,tag=Parts,distance=..4] {Thrower:$(UUID)} run return fail

#アイテム召喚
summon item ~ ~ ~ {Tags:["GiveParts"],Item:{id:"quartz"}}

#データをコピー
data modify entity @n[type=item,tag=GiveParts] Item.components set \
from entity @n[type=item,tag=Parts,distance=..4] Item.components
data remove entity @n[type=item,tag=GiveParts] Item.components.minecraft:custom_data.type

#データを反映
$data modify storage pickup $(XpLevel) set from entity @n[type=item,tag=GiveParts] Item.components.minecraft:custom_data
$data modify storage pickup $(XpLevel).pNum set value $(XpLevel)
$function core:pickup_parts_reflection with storage pickup $(XpLevel)

#メッセージ
tellraw @a [{"selector":"@s","color":"aqua",bold:true},{"text":"が",color:white,bold:false},{"selector":"@n[type=item,tag=GiveParts]",color:"green",bold:true},{"text":"を手に入れた！",color:white,bold:false}]

#元のアイテムをキル
kill @n[type=item,tag=Parts,distance=..4]