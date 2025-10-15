#スポナー位置に移動
playsound item.armor.equip_iron master @s ~ ~ ~ 1 0.9
scoreboard players set @s isShootReady 0
$tp @s @n[type=armor_stand,tag=spawnerPos$(XpLevel)]
rotate @s ~ ~

#ライド用itemDisplay表示
#$summon item_display ~ ~ ~ {Tags:["spawnerRide$(XpLevel)","spawnerRides"],teleport_duration:1,data:{owner:$(XpLevel)}}

#ライド
effect give @e[type=mannequin,tag=playerAvator] invisibility infinite 1 true
#$ride @s mount @n[type=item_display,tag=spawnerRide$(XpLevel)]