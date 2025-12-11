$summon item ~ ~-1 ~ {Tags:["Parts"],PickupDelay: 32767,Item:{id:"quartz",\
                        components:{item_model:"rareweapons/$(weapon)/parts$(num)",item_name:[{"translate":"item.rareweapon.$(weapon).parts"},{"text":"$(num)"}],\
                                    custom_data:{type:"parts",parts:"$(weapon)",num:$(num)},rarity:"rare"}}}
#data modify entity @n[type=item,tag=Parts] Thrower set from entity @s UUID