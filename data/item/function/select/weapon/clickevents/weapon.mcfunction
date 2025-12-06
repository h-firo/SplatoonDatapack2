#武器を設定
execute if items entity @s player.cursor *[custom_data~{content:"splattershot"}] run function command:set_weapon {category:shooter,weapon:splattershot}
execute if items entity @s player.cursor *[custom_data~{content:"splattershot_pro"}] run function command:set_weapon {category:shooter,weapon:splattershot_pro}
execute if items entity @s player.cursor *[custom_data~{content:"ftgal"}] run function command:set_weapon {category:shooter,weapon:ftgal}
execute if items entity @s player.cursor *[custom_data~{content:"aerospray"}] run function command:set_weapon {category:shooter,weapon:aerospray}
execute if items entity @s player.cursor *[custom_data~{content:"nzap85"}] run function command:set_weapon {category:shooter,weapon:nzap85}

execute if items entity @s player.cursor *[custom_data~{content:"splatroller"}] run function command:set_weapon {category:roller,weapon:splatroller}
execute if items entity @s player.cursor *[custom_data~{content:"carbonroller"}] run function command:set_weapon {category:roller,weapon:carbonroller}
execute if items entity @s player.cursor *[custom_data~{content:"dynamoroller"}] run function command:set_weapon {category:roller,weapon:dynamoroller}
execute if items entity @s player.cursor *[custom_data~{content:"wideroller"}] run function command:set_weapon {category:roller,weapon:wideroller}

execute if items entity @s player.cursor *[custom_data~{content:"splatcharger"}] run function command:set_weapon {category:charger,weapon:splatcharger}
execute if items entity @s player.cursor *[custom_data~{content:"eliter4k"}] run function command:set_weapon {category:charger,weapon:eliter4k}
execute if items entity @s player.cursor *[custom_data~{content:"squiffer"}] run function command:set_weapon {category:charger,weapon:squiffer}
execute if items entity @s player.cursor *[custom_data~{content:"snipewriter"}] run function command:set_weapon {category:charger,weapon:snipewriter}

execute if items entity @s player.cursor *[custom_data~{content:"blaster"}] run function command:set_weapon {category:blasters,weapon:blaster}
execute if items entity @s player.cursor *[custom_data~{content:"rangeblaster"}] run function command:set_weapon {category:blasters,weapon:rangeblaster}
execute if items entity @s player.cursor *[custom_data~{content:"clashblaster"}] run function command:set_weapon {category:blasters,weapon:clashblaster}
execute if items entity @s player.cursor *[custom_data~{content:"sblast92"}] run function command:set_weapon {category:blasters,weapon:sblast92}

execute if items entity @s player.cursor *[custom_data~{content:"slosher"}] run function command:set_weapon {category:sloshers,weapon:slosher}
execute if items entity @s player.cursor *[custom_data~{content:"trislosher"}] run function command:set_weapon {category:sloshers,weapon:trislosher}
execute if items entity @s player.cursor *[custom_data~{content:"explosher"}] run function command:set_weapon {category:sloshers,weapon:explosher}

execute if items entity @s player.cursor *[custom_data~{content:"minisplatling"}] run function command:set_weapon {category:splatlings,weapon:minisplatling}
execute if items entity @s player.cursor *[custom_data~{content:"heavysplatling"}] run function command:set_weapon {category:splatlings,weapon:heavysplatling}
execute if items entity @s player.cursor *[custom_data~{content:"hydrasplatling"}] run function command:set_weapon {category:splatlings,weapon:hydrasplatling}

execute if items entity @s player.cursor *[custom_data~{content:"inkbrush"}] run function command:set_weapon {category:brushes,weapon:inkbrush}
execute if items entity @s player.cursor *[custom_data~{content:"octobrush"}] run function command:set_weapon {category:brushes,weapon:octobrush}
clear @s