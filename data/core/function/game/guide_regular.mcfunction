execute if entity @s[advancements={core:guide/action/subweapon=false}] if score time gameTime matches ..2400 run function core:guide/grant {category:action,name:subweapon}
execute if entity @s[advancements={core:guide/action/climb=false}] if score time gameTime matches ..3000 run function core:guide/grant {category:action,name:climb}
execute if entity @s[advancements={core:guide/action/sprint=false}] if score time gameTime matches ..3400 run function core:guide/grant {category:action,name:sprint}

$function core:game/guide_weapon with storage player: $(XpLevel)