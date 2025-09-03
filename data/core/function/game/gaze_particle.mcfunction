$execute unless block ^ ^ ^1 #air run return run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"firework"},Radius:0f,Duration:1,Age:15,Tags:["gaze$(XpLevel)"]}
execute if entity @s[distance=..70] positioned ^ ^ ^1 run function core:game/gaze_particle with entity @s
