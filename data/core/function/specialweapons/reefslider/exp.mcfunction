#プレイヤーが所属しているteamと、プレイヤーが使うスペシャルを、storageに保存
$data modify storage special_temp: $(owner) set from storage player: $(owner).weapon
$data modify storage special_temp: $(owner).team set from storage player: $(owner).team
$data modify storage special_temp: $(owner).color set from storage player: $(owner).color
$data modify storage special_temp: $(owner).num set from storage player: $(owner).num

#shotNumの増加
scoreboard players add num shotNum 1
$execute store result storage special_temp: $(owner).shotNum int 1 run scoreboard players get num shotNum

#爆発
playsound entity.generic.explode master @a ~ ~ ~ 1 1.3
$function core:specialweapons/reefslider/explosion/set with storage special_temp: $(owner)

#終了
kill @s
kill @n[type=armor_stand,tag=sphereExplosion]
$scoreboard players set @p[level=$(owner)] useSpecialWeapon 2