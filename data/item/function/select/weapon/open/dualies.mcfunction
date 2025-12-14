clear @s

#スプラマニューバー
item replace entity @s inventory.0 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["curingbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["triplesplashdown"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["middle"]}}}],\
                        item_name={translate:"item.weapon.splatdualies",bold:true},item_model="splatdualies",custom_data={item:"button",type:"weapon",content:"splatdualies"},\
                        lore=[{"color":"gray","translate":"item.weapon.splatdualies.lore1"},{"color":"gray","translate":"item.weapon.splatdualies.lore2"}]]