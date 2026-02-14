#アイテムが捨てられているかどうか
$execute if entity @e[type=item,nbt={Thrower:$(UUID)}] run function core:specialweapons/ultrastamp/throw with storage player: $(XpLevel)
$kill @e[type=item,nbt={Thrower:$(UUID)}]