#現在投げたガイドの数に応じて設定
execute if score @s inkstrikeGuideCount matches 0 run item replace entity @s hotbar.1 with \
copper_nugget[consumable={consume_seconds:100,animation:"bow",sound:"entity.tropical_fish.ambient",has_consume_particles:false},custom_data={item:"specialweapon"},item_model="guidepoint",item_name={translate:item.specialweapon.tripleinkstrike},custom_model_data={strings:["3"]}]
execute if score @s inkstrikeGuideCount matches 1 run item replace entity @s hotbar.1 with \
copper_nugget[consumable={consume_seconds:100,animation:"bow",sound:"entity.tropical_fish.ambient",has_consume_particles:false},custom_data={item:"specialweapon"},item_model="guidepoint",item_name={translate:item.specialweapon.tripleinkstrike},custom_model_data={strings:["2"]}]
execute if score @s inkstrikeGuideCount matches 2 run item replace entity @s hotbar.1 with \
copper_nugget[consumable={consume_seconds:100,animation:"bow",sound:"entity.tropical_fish.ambient",has_consume_particles:false},custom_data={item:"specialweapon"},item_model="guidepoint",item_name={translate:item.specialweapon.tripleinkstrike},custom_model_data={strings:["1"]}]