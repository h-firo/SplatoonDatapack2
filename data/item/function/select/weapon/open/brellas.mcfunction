clear @s

#パラシェルター
item replace entity @s inventory.0 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["curingbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["tripleinkstrike"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick_hold_plus"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["large"]}}}],\
                        item_name={translate:"item.weapon.splatbrella",bold:true},item_model="splatbrella_open",custom_data={item:"button",type:"weapon",content:"splatbrella"},\
                        lore=[{"color":"gray","translate":"item.weapon.splatbrella.lore1"},{"color":"gray","translate":"item.weapon.splatbrella.lore2"}]]