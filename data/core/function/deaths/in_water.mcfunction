#水没
scoreboard players set @s health 0

tellraw @a [{"selector":"@s",color:aqua,bold:true},{"text":" は水没した",color:white,bold:false}]
playsound block.wet_sponge.dries master @a ~ ~ ~ 1 1

#復活時間設定
scoreboard players set @s resurrectionTime 100
#リセット
scoreboard players set @s drinkTimer 0
scoreboard players set @s useSpecialWeapon 1
function core:weapons/chargers/charge_reset
#スペクテイターに
gamemode spectator @s