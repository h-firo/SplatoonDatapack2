#要素追加手順
#1.要素コピペ　2.スロット変更　3.アイコンカスタムモデルデータ設定　4.名前翻訳キー変更　5.説明翻訳キー変更　6.アイテムモデル変更　7.クリックデータ変更　8.clickevents/weaponに追加
clear @s

#スプラシューター
item replace entity @s inventory.0 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["suctionbomb"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["trizooka"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["small"]}}}],\
                        item_name={translate:"item.weapon.splattershot",bold:true},item_model="splatter_shot",custom_data={item:"button",type:"weapon",content:"splattershot"},\
                        lore=[{"color":"gray","translate":"item.weapon.splattershot.lore1"},{"color":"gray","translate":"item.weapon.splattershot.lore2"}]]

#プライムシューター
item replace entity @s inventory.1 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["angleshooter"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["crabtank"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["large"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["small"]}}}],\
                        item_name={translate:"item.weapon.splattershot_pro",bold:true},item_model="splatter_shot_pro",custom_data={item:"button",type:"weapon",content:"splattershot_pro"},\
                        lore=[{"color":"gray","translate":"item.weapon.splattershot_pro.lore1"},{"color":"gray","translate":"item.weapon.splattershot_pro.lore2"}]]

#52ガロン
item replace entity @s inventory.2 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["splashwall"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["killerwail51"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["strongest"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["large"]}}}],custom_data={item:"button",type:"weapon",content:"ftgal"},\
                        item_name={translate:"item.weapon.52Gal",bold:true},item_model="52gal",\
                        lore=[{"color":"gray","translate":"item.weapon.52Gal.lore1"},{"color":"gray","translate":"item.weapon.52Gal.lore2"}]]

#プロモデラーMG
item replace entity @s inventory.3 with \
bundle[bundle_contents=[{id:"diamond",components:{"item_model":"subweapon","custom_model_data":{strings:["angleshooter"]}}},\
                        {id:"diamond",components:{"item_model":"carrot_on_a_stick","custom_model_data":{strings:["bigbubbler"]}}},\
                        {id:"diamond",components:{"item_model":"mouseclick","custom_model_data":{strings:["rightclick"]}}},\
                        {id:"diamond",components:{"item_model":"length","custom_model_data":{strings:["middle"]}}},\
                        {id:"diamond",components:{"item_model":"rate","custom_model_data":{strings:["high"]}}},\
                        {id:"diamond",components:{"item_model":"power","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"ink","custom_model_data":{strings:["low"]}}},\
                        {id:"diamond",components:{"item_model":"spread","custom_model_data":{strings:["large"]}}}],custom_data={item:"button",type:"weapon",content:"aerospray"},\
                        item_name={translate:"item.weapon.aerospray",bold:true},item_model="aerospray",\
                        lore=[{"color":"gray","translate":"item.weapon.aerospray.lore1"},{"color":"gray","translate":"item.weapon.aerospray.lore2"}]]