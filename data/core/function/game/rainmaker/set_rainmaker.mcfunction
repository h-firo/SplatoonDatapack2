kill @e[type=item_display,tag=rainmakerObject]
kill @e[type=item_display,tag=rainmakerBarrier]
kill @e[type=shulker,tag=rainmarkerBarrierCollider]

scoreboard players set team1 BarrierDamage 0
scoreboard players set team2 BarrierDamage 0

summon item_display ~ ~1 ~ {Tags:["rainmakerObject"],item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0f],scale:[1f,1f,1]},\
                            item:{id:"minecraft:diamond",count:1,components:{"item_model":rainmaker}}}
summon item_display ~ ~1 ~ {Tags:["rainmakerBarrier"],item_display:"ground",teleport_duration:1,\
                            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0f],scale:[5f,5f,5f]},\
                            item:{id:"minecraft:diamond",count:1,components:{"item_model":rainmaker_effect}}}
summon shulker ~ ~1 ~ {Tags:["rainmarkerBarrierCollider"],NoAI:true,active_effects:[{id:"invisibility",amplifier:1,duration:-1,show_particles:false}],\
                            attributes:[{id:"scale",base:5}],Silent:true}