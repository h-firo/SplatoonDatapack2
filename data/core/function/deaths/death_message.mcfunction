#死亡メッセージ
scoreboard players set @s isSayDeathMessage 1
#メインウェポン
$execute if data storage deathmessage {DeathMesseageType:"main"} run return run \
tellraw @a [{"selector":"@s",color:aqua,bold:true},{"text":" は ",color:white,bold:false},{"selector":"@a[level=$(Killer)]",color:aqua,bold:true},{"text":"の",color:white,bold:false},\
{"entity":"@a[level=$(Killer)]",nbt:"Inventory[0].components.minecraft:item_name",interpret:true,color:green,bold:true},{"text":" によって倒された",color:white,bold:false}]

#そのほか（langファイルに登録する必要がある)
$tellraw @a [{"selector":"@s",color:aqua,bold:true},{"text":" は ",color:white,bold:false},{"selector":"@a[level=$(Killer)]",color:aqua,bold:true},{"text":"の",color:white,bold:false},\
{translate:"death.$(DeathMesseageType)",interpret:true,color:green,bold:true},{"text":" によって倒された",color:white,bold:false}]