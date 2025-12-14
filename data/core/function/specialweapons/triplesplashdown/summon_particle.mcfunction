$summon armor_stand ~ ~ ~ {Tags:["triplesplashdownParticle$(num)_$(x)"]}
$execute as @n[type=armor_stand,tag=triplesplashdownParticle$(num)_$(x)] at @s run function core:specialweapons/triplesplashdown/particle {radius:$(radius)}
$kill @n[type=armor_stand,tag=triplesplashdownParticle$(num)_$(x)]