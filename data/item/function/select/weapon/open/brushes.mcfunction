clear @s

#パブロ
item replace entity @s inventory.0 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["splashbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["killerwail51"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick_hold_plus"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["short"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["large"]}}}],\
                        item_name={translate:"item.weapon.inkbrush",bold:true},item_model="inkbrush",custom_data={item:"button",type:"weapon",content:"inkbrush"},\
                        lore=[{"color":"gray","translate":"item.weapon.inkbrush.lore1"},{"color":"gray","translate":"item.weapon.inkbrush.lore2"}]]

#ホクサイ
item replace entity @s inventory.1 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["suctionbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["reefslider"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick_hold_plus"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["large"]}}}],\
                        item_name={translate:"item.weapon.octobrush",bold:true},item_model="octobrush",custom_data={item:"button",type:"weapon",content:"octobrush"},\
                        lore=[{"color":"gray","translate":"item.weapon.octobrush.lore1"},{"color":"gray","translate":"item.weapon.octobrush.lore2"}]]