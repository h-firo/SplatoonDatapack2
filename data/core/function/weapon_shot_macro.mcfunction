$execute if data storage player: {$(XpLevel):{specialWeapon:"crabtank"}} if score @s useSpecialWeapon matches 1.. run return fail
$execute if data storage player: {$(XpLevel):{specialWeapon:"reefslider"}} if score @s useSpecialWeapon matches 1.. run return fail
$execute if data storage player: {$(XpLevel):{specialWeapon:"trizooka"}} if score @s useSpecialWeapon matches 1.. run return fail
$execute if data storage player: {$(XpLevel):{specialWeapon:"triplesplashdown"}} if score @s useSpecialWeapon matches 1.. run return fail
$execute if data storage player: {$(XpLevel):{specialWeapon:"ultrastamp"}} if score @s useSpecialWeapon matches 1.. run return fail
execute if score @s preDelay matches 1.. run scoreboard players set @s rightHold 0
execute if score @s preDelay matches 1.. run scoreboard players remove @s preDelay 1
execute if score @s preDelay matches 1.. run return fail

#プレイヤーが所属しているteamと、プレイヤーが持っている武器を、shot関数にマクロとして渡す
$data modify storage shot_temp: $(XpLevel) set from storage player: $(XpLevel).weapon
$data modify storage shot_temp: $(XpLevel).team set from storage player: $(XpLevel).team
$data modify storage shot_temp: $(XpLevel).color set from storage player: $(XpLevel).color
$data modify storage shot_temp: $(XpLevel).num set from storage player: $(XpLevel).num
$data modify storage shot_temp: $(XpLevel).category set from storage player: $(XpLevel).category

#インクが足りているかの確認
$execute store result score @s isInkEnough run function core:is_inkenough with storage shot_temp: $(XpLevel)
execute if score @s isInkEnough matches -1 run return fail

#shotNumの増加
#scoreboard players add num shotNum 1
#$execute store result storage shot_temp: $(XpLevel).shotNum int 1 run scoreboard players get num shotNum

$execute if data storage player: {$(XpLevel):{category:shooter}} if score @s accFP >= @s rateFP run \
function core:weapons/shooters/shot_macro with entity @s

$execute if data storage player: {$(XpLevel):{category:roller}} if score @s shotDelay matches ..0 if score @s rightHold matches 0 run \
function core:weapons/rollers/shot_macro with storage shot_temp: $(XpLevel)

$execute if data storage player: {$(XpLevel):{category:charger}} if score @s shotDelay matches ..0 if score @s chargeKeepTime matches -1 unless score @s charged matches 1 run \
function core:weapons/chargers/charge with storage shot_temp: $(XpLevel)

$execute if data storage player: {$(XpLevel):{category:charger}} if score @s shotDelay matches ..0 if score @s ink matches ..1 if score @s chargeKeepTime matches -1 run \
function core:weapons/chargers/charge_reset

$execute if data storage player: {$(XpLevel):{category:blasters}} if score @s shotDelay matches ..0 run \
function core:weapons/blasters/shot_macro with entity @s

$execute if data storage player: {$(XpLevel):{category:sloshers}} if score @s shotDelay matches ..0 run \
function core:weapons/sloshers/shot_macro with entity @s

$execute if data storage player: {$(XpLevel):{category:splatlings}} if score @s shotDelay matches ..0 unless score @s charged matches 1 run \
function core:weapons/splatlings/charge with storage shot_temp: $(XpLevel)

$execute if data storage player: {$(XpLevel):{category:splatlings,weapon:{name:ballpointsplatling}}} run \
function core:weapons/splatlings/charge with storage shot_temp: $(XpLevel)

$execute if data storage player: {$(XpLevel):{category:splatlings}} if score @s shotDelay matches ..0 if score @s ink matches ..1 run \
function core:weapons/splatlings/charge_reset

$execute if data storage player: {$(XpLevel):{category:brushes}} if score @s shotDelay matches ..0 if score @s rightHold matches 0 run \
function core:weapons/brushes/shot_macro with entity @s

$execute if data storage player: {$(XpLevel):{category:dualies}} if score @s shotDelay matches ..0 run \
function core:weapons/dualies/shot_macro with entity @s

$execute if data storage player: {$(XpLevel):{category:brellas}} if score @s shotDelay matches ..0 if score @s rightHold matches 0 run \
function core:weapons/brellas/shot_macro with storage shot_temp: $(XpLevel)

$execute if data storage player: {$(XpLevel):{category:brellas}} if score @s rightHold matches 1.. run \
function core:weapons/brellas/guard_tick with storage shot_temp: $(XpLevel)