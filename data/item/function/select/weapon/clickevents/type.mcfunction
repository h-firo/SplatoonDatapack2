#タイプ追加手順
#1.type_select_openに追加　2.ここのやつをコピペ　3.custom_data/content,openfunctionを変更
execute if items entity @s player.cursor *[custom_data={item:"button",type:"type_select",content:"shooter"}] run function item:select/weapon/open/shooter
execute if items entity @s player.cursor *[custom_data={item:"button",type:"type_select",content:"roller"}] run function item:select/weapon/open/roller
execute if items entity @s player.cursor *[custom_data={item:"button",type:"type_select",content:"charger"}] run function item:select/weapon/open/charger
execute if items entity @s player.cursor *[custom_data={item:"button",type:"type_select",content:"blasters"}] run function item:select/weapon/open/blasters
execute if items entity @s player.cursor *[custom_data={item:"button",type:"type_select",content:"sloshers"}] run function item:select/weapon/open/sloshers
execute if items entity @s player.cursor *[custom_data={item:"button",type:"type_select",content:"splatlings"}] run function item:select/weapon/open/splatlings
execute if items entity @s player.cursor *[custom_data={item:"button",type:"type_select",content:"brushes"}] run function item:select/weapon/open/brushes
execute if items entity @s player.cursor *[custom_data={item:"button",type:"type_select",content:"dualies"}] run function item:select/weapon/open/dualies
