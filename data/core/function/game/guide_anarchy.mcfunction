execute if entity @s[advancements={core:guide/action/subweapon=false}] if score time gameTime matches ..4400 run function core:guide/grant {category:action,name:subweapon}
execute if entity @s[advancements={core:guide/action/climb=false}] if score time gameTime matches ..5000 run function core:guide/grant {category:action,name:climb}
execute if entity @s[advancements={core:guide/action/sprint=false}] if score time gameTime matches ..5800 run function core:guide/grant {category:action,name:sprint}

$function core:game/guide_weapon_anarchy with storage player: $(XpLevel)