clear @s

#バケットスロッシャー
item replace entity @s inventory.0 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["splashbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["bigbubbler"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["small"]}}}],\
                        item_name={translate:"item.weapon.slosher",bold:true},item_model="slosher",custom_data={item:"button",type:"weapon",content:"slosher"},\
                        lore=[{"color":"gray","translate":"item.weapon.slosher.lore1"},{"color":"gray","translate":"item.weapon.slosher.lore2"}]]

#ヒッセン
item replace entity @s inventory.1 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["splashbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["wavebreaker"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["short"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["small"]}}}],\
                        item_name={translate:"item.weapon.trislosher",bold:true},item_model="trislosher",custom_data={item:"button",type:"weapon",content:"trislosher"},\
                        lore=[{"color":"gray","translate":"item.weapon.trislosher.lore1"},{"color":"gray","translate":"item.weapon.trislosher.lore2"}]]

#エクスプロッシャー
item replace entity @s inventory.2 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["splashbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["trizooka"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["large"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["middle"]}}}],\
                        item_name={translate:"item.weapon.explosher",bold:true},item_model="explosher",custom_data={item:"button",type:"weapon",content:"explosher"},\
                        lore=[{"color":"gray","translate":"item.weapon.explosher.lore1"},{"color":"gray","translate":"item.weapon.explosher.lore2"}]]