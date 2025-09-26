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
$scoreboard players set @p[level=$(owner)] isInvincible 0
kill @s
kill @n[type=armor_stand,tag=sphereExplosion]

#後隙
summon area_effect_cloud ~ ~ ~ \
{custom_particle:{type:"splash"},Radius:0.5f,Duration:10,Age:3,ReapplicationDelay:10,WaitTime:0,RadiusOnUse:-5f,potion_contents:{potion:"minecraft:water",\
custom_effects:[{id:"minecraft:slowness",amplifier:100,duration:10,show_icon:false,show_particles:false}]}}

$scoreboard players set @p[level=$(owner)] useSpecialWeapon 2