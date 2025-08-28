clear @s

#ホットブラスター
item replace entity @s inventory.0 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["inkmine"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["bigbubbler"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["small"]}}}],\
                        item_name={translate:"item.weapon.blaster",bold:true},item_model="blaster",custom_data={item:"button",type:"weapon",content:"blaster"},\
                        lore=[{"color":"gray","translate":"item.weapon.blaster.lore1"},{"color":"gray","translate":"item.weapon.blaster.lore2"}]]

#ロングブラスター
item replace entity @s inventory.1 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["suctionbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["wavebreaker"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["large"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["small"]}}}],\
                        item_name={translate:"item.weapon.rangeblaster",bold:true},item_model="range_blaster",custom_data={item:"button",type:"weapon",content:"rangeblaster"},\
                        lore=[{"color":"gray","translate":"item.weapon.rangeblaster.lore1"},{"color":"gray","translate":"item.weapon.rangeblaster.lore2"}]]

#クラッシュブラスター
item replace entity @s inventory.2 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["splashbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["trizooka"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["short"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["middle"]}}}],\
                        item_name={translate:"item.weapon.clashblaster",bold:true},item_model="clashblaster",custom_data={item:"button",type:"weapon",content:"clashblaster"},\
                        lore=[{"color":"gray","translate":"item.weapon.clashblaster.lore1"},{"color":"gray","translate":"item.weapon.clashblaster.lore2"}]]