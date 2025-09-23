#スコアボード
#Core
#mode:{0:何もなし,1:全員強制スぺクテイター}
scoreboard objectives add isGame dummy
scoreboard objectives add isJudge dummy
scoreboard objectives add mode dummy
scoreboard objectives add gameMode dummy
scoreboard objectives add myTeamNum dummy
scoreboard objectives add participationTeam dummy
scoreboard objectives add isSuccess dummy
scoreboard objectives add randomTeam dummy
scoreboard objectives add teamMemberCount dummy
scoreboard objectives add playerSetCount dummy
scoreboard objectives add shotX dummy
scoreboard objectives add tX dummy
scoreboard objectives add shotY dummy
scoreboard objectives add shotZ dummy
scoreboard objectives add tZ dummy
scoreboard objectives add shotBlur dummy
scoreboard objectives add setAirBlur dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add particleTimer dummy
scoreboard objectives add stage dummy
scoreboard objectives add spanwerRotate dummy
scoreboard objectives add damageType dummy
scoreboard objectives add damageOwner dummy
scoreboard objectives add linkLampNum dummy
scoreboard objectives add setLampNum dummy
scoreboard objectives add gameTime dummy
scoreboard objectives add isShootReady dummy
#勝敗判定用
scoreboard objectives add blockCounts dummy
scoreboard objectives add blockCountDisplay dummy

#CoreTime
scoreboard objectives add coreTime dummy

#IIN
scoreboard objectives add pNum dummy
scoreboard objectives add shotNum dummy
scoreboard objectives add bombNum dummy
scoreboard objectives add objNum dummy
scoreboard objectives add resetNum dummy

#Player
scoreboard objectives add team dummy
scoreboard objectives add ink dummy
scoreboard objectives add isClimbd dummy
scoreboard objectives add specialPoint dummy
scoreboard objectives add MaxSpecialPoint dummy
scoreboard objectives add specialPointPerMax dummy
scoreboard objectives add inkTo100 dummy
scoreboard objectives add useSpecialWeapon dummy
scoreboard objectives add specialUseCount dummy
scoreboard objectives add maxSpecialUseCount dummy
scoreboard objectives add markingTimer dummy
scoreboard objectives add nowPaintAreaBlocks dummy
scoreboard objectives add nowPaitnAreaMyTeamBlocks dummy
scoreboard objectives add weaponCount dummy
scoreboard objectives add rotate dummy
scoreboard objectives add resurrectionTime dummy

#Health
scoreboard objectives add health dummy
scoreboard players set @a health 100

#weapon
scoreboard objectives add accuracy dummy
scoreboard objectives add accuracy_ dummy
scoreboard objectives add accuracyRandom_ dummy
scoreboard objectives add damage dummy
scoreboard objectives add damageData_ dummy
scoreboard objectives add speed dummy
scoreboard objectives add removeInk dummy
scoreboard objectives add charge dummy
scoreboard objectives add chargeCarry dummy
scoreboard objectives add maxChargeValue dummy
scoreboard objectives add chargeDisplay dummy
scoreboard objectives add chargeTo100 dummy
scoreboard objectives add chargerLiveTime dummy
scoreboard objectives add chargeKeepTime dummy
scoreboard objectives add maxAirCharge dummy
scoreboard objectives add airCharge dummy
scoreboard objectives add snipewriterBullet dummy
scoreboard objectives add charged dummy
scoreboard objectives add blastMode dummy

#subweapon
scoreboard objectives add explosionTimer dummy
scoreboard objectives add isSticking dummy
scoreboard objectives add paintPos dummy
scoreboard objectives add paintRate dummy
scoreboard objectives add paintTimer dummy

#SpecialWeapon
scoreboard objectives add shotFireRate dummy
scoreboard objectives add killerwailDamageDelay dummy
scoreboard objectives add killerwailTargetDelay dummy
scoreboard objectives add objTimer dummy
scoreboard objectives add drinkNum dummy
scoreboard objectives add drinkTimer dummy
scoreboard objectives add isHaveDrinker dummy
scoreboard objectives add isKillerWail dummy
scoreboard objectives add objDamage dummy
scoreboard objectives add isCube dummy
scoreboard objectives add waveBreakerTimer dummy
scoreboard objectives add waveTimer dummy
scoreboard objectives add waveParticle dummy
scoreboard objectives add rsPrepareExplosion dummy
scoreboard objectives add isAirRail dummy
scoreboard objectives add havePassenger dummy

#Delay
scoreboard objectives add delay dummy
scoreboard objectives add shotDelay dummy
scoreboard objectives add preDelay dummy
scoreboard objectives add sprintDelay dummy
scoreboard players set @a delay 0
scoreboard players set @a shotDelay 0
scoreboard players set @a sprintDelay 0
scoreboard players set @a preDelay 0

#Number
scoreboard objectives add num dummy
scoreboard players set 1600 num 1600
scoreboard players set 100 num 100
scoreboard players set 1000 num 1000
scoreboard players set 500 num 500
scoreboard players set 10 num 10
scoreboard players set 48 num 48
scoreboard players set 16 num 16
scoreboard players set 2 num 2
scoreboard players set 0 num 0
scoreboard players set -1 num -1
scoreboard players set 1200 num 1200
scoreboard players set 20 num 20

#flag
scoreboard objectives add rightHold dummy
scoreboard objectives add rightClick used:carrot_on_a_stick
scoreboard objectives add rightDown used:carrot_on_a_stick
scoreboard objectives add isSprint dummy
scoreboard objectives add isSquid dummy
scoreboard objectives add isInAir dummy
scoreboard objectives add isDamageSet dummy

#Lobby
scoreboard objectives add spawnTime dummy

#title関係
title @a times 0 8 0

#インク同士が当たらないようにする
team add noCollision
team modify noCollision collisionRule never

#イカランプ
bossbar add squidlamp {"text":"あああ"}
bossbar set squidlamp players @a
bossbar set squidlamp visible true
bossbar set squidlamp name [{"text":"\uEB00\uE505\uEA03\uE500\uEA03\uE505\uEA03\uE500","color":"white","shadow_color":16777215},\
                            {"text":"\uEA03\uE50A\uEA03","color":"white","shadow_color":16777215},\
                            {"text":"\uE501\uEA03\uE505\uEA03\uE501\uEA03\uE501","color":"white","shadow_color":16777215},\
                            {"text":"q4:20","color":"white","shadow_color":16777215,"font":"num"}]
#bossbar set squidlamp name [{"text":"\uEB00\uE505\uEA03\uE500\uEA03\uE505\uEA03\uE500","color":"white","shadow_color":16777215},\
                            {"text":"\uEA03\uE50A\uEA03","color":"white","shadow_color":16777215},\
                            {"text":"\uE501\uEA03\uE505\uEA03\uE501\uEA03\uE501","color":"white","shadow_color":16777215}]
#bossbar set squidlamp name [{"text":"\uE501\uEA03\uE501\uEA03\uE501\uEA03\uE501","color":"white","shadow_color":16777215},\
                            {"text":"\uEA03\uE50A\uEA03","color":"white","shadow_color":16777215},\
                            {"text":"\uE501\uEA03\uE501\uEA03\uE501\uEA03\uE501","color":"white","shadow_color":16777215}]
#bossbar set squidlamp name {"text":"\uE501\uE501\uE501\uE501\uE500\uE501\uE501\uE501\uE501","color":"white","shadow_color":16777215}

#初期化
#タグ消去
function core:game/reset/shotnum
scoreboard players set num pNum 0
scoreboard players set num shotNum 0
scoreboard players set num objNum 0
scoreboard players set num bombNum 0
scoreboard players set @a drinkTimer 0
scoreboard players set @a ink 999
scoreboard players set @a specialPoint 0
tag @a remove pNumAlreadySet
tag @a[tag=!player] add player

#ストレージ
#色
data merge storage team_color: {0:"blue",1:"yellow",2:"orange",3:"pink",4:"lime"}
data merge storage text_color: {0:"blue",1:"gold",2:"#FF6E19",3:"light_purple",4:"green"}
#team1のyaw=180,team2のyaw=0で固定
data merge storage playerspawner: {0:{team1:{0:{x:9,y:-6,z:-251,yaw:180},1:{x:14,y:-6,z:-251,yaw:180},2:{x:19,y:-6,z:-251,yaw:180},3:{x:24,y:-6,z:-251,yaw:180}},\
                                      team2:{0:{x:20,y:-8,z:-131,yaw:0},1:{x:25,y:-8,z:-131,yaw:0},2:{x:30,y:-8,z:-131,yaw:0},3:{x:35,y:-8,z:-131,yaw:0}}}}

#[連射レート(フレーム/3×10),ダメージ,インク消費量(割合×10),拡散,ジャンプ中拡散,最大拡散(拡散/補正悪化量[発]),射程(着弾速度),射程(落下速度,デフォ0.08),イカ速,ヒト速,威力減衰,前隙\
(ローラー:塗り進み最小,塗り進み最大,塗り進み速度,塗り進みダメージ,縦振りレート,縦振り速度),\
(チャージャー:チャージ時間,チャージキープ時間,チャージキープレート,射程増加割合,空中チャージ減衰),\
(ブラスター:爆風範囲,爆風ダメージ,弾持続時間)\
(スピナー:チャージ時間,チャージキープ時間,チャージキープレート,射程増加割合,空中チャージ減衰,最大チャージレート)
data merge storage weapons: {\
shooter:{\
splattershot:{FireRate:20,Damage:37,Ink:9,Blur:3,AirBlur:3,MaxBlur:240,Speed:0.001,Gravity:0.5,SSpeed:2,HSpeed:0.4,DamageAT:1,PreGap:2},\
splattershot_pro:{FireRate:26,Damage:45,Ink:20,Blur:1,AirBlur:1,MaxBlur:100,Speed:0.001,Gravity:0.3,SSpeed:2,HSpeed:0.32,DamageAT:1,PreGap:2},\
ftgal:{FireRate:30,Damage:52,Ink:13,Blur:8,AirBlur:5,MaxBlur:264,Speed:0.001,Gravity:0.5,SSpeed:2,HSpeed:0.2,DamageAT:0,PreGap:2},\
aerospray:{FireRate:10,Damage:24,Ink:5,Blur:300,AirBlur:5,MaxBlur:300,Speed:0.0008,Gravity:0.5,SSpeed:2,HSpeed:0.44,DamageAT:1,PreGap:2},\
nzap85:{FireRate:16,Damage:30,Ink:8,Blur:1,AirBlur:1,MaxBlur:206,Speed:0.0013,Gravity:1,SSpeed:2,HSpeed:0.47,DamageAT:0,PreGap:1}},\
roller:{\
splatroller:{FireRate:140,Damage:120,Ink:85,Blur:1,AirBlur:3,MaxBlur:1,Speed:0.001,Gravity:0.1,SSpeed:2,HSpeed:1,DamageAT:2,PreGap:2,MinRange:0,MaxRange:1,RollingSpeed:0.6,RollingDamage:125,FireRate2:145,VSpeed:0.001},\
carbonroller:{FireRate:100,Damage:107,Ink:39,Blur:1,AirBlur:3,MaxBlur:1,Speed:0.001,Gravity:0.3,SSpeed:2,HSpeed:1,DamageAT:2,PreGap:1,MinRange:0,MaxRange:1,RollingSpeed:0.7,RollingDamage:70,FireRate2:140,VSpeed:0.001},\
dynamoroller:{FireRate:40,Damage:180,Ink:180,Blur:1,AirBlur:3,MaxBlur:1,Speed:0.001,Gravity:0.1,SSpeed:2,HSpeed:1,DamageAT:15,PreGap:19,MinRange:-1,MaxRange:1,RollingSpeed:0.4,RollingDamage:125,FireRate2:42,VSpeed:0.0015},\
wideroller:{FireRate:130,Damage:70,Ink:90,Blur:1,AirBlur:3,Speed:0.001,Gravity:0.08,SSpeed:2,HSpeed:1,DamageAT:3,PreGap:2,MinRange:-2,MaxRange:2,RollingSpeed:0.7,RollingDamage:70,FireRate2:150,VSpeed:0.0013}},\
charger:{\
eliter4k:{FireRate:46,Damage:180,Ink:250,Blur:0,AirBlur:1,MaxBlur:1,Speed:0.008,Gravity:0,SSpeed:2,HSpeed:0.1,DamageAT:0,PreGap:2,ChargeTime:30,CKTime:25,CKRate:8,AirCharge:2},\
splatcharger:{FireRate:46,Damage:160,Ink:180,Blur:0,AirBlur:1,MaxBlur:1,Speed:0.006,Gravity:0,SSpeed:2,HSpeed:0.2,DamageAT:0,PreGap:2,ChargeTime:20,CKTime:25,CKRate:8,AirCharge:3},\
squiffer:{FireRate:46,Damage:140,Ink:100,Blur:0,AirBlur:1,MaxBlur:1,Speed:0.004,Gravity:0,SSpeed:2,HSpeed:0.3,DamageAT:0,PreGap:2,ChargeTime:13,CKTime:25,CKRate:8,AirCharge:0},\
snipewriter:{FireRate:46,Damage:68,Ink:70,Blur:0,AirBlur:1,MaxBlur:1,Speed:0.004,Gravity:0,SSpeed:2,HSpeed:0.3,DamageAT:0,PreGap:2,ChargeTime:24,CKTime:1,CKRate:8,AirCharge:0}},\
blasters:{\
blaster:{FireRate:160,Damage:125,Ink:100,Blur:1,AirBlur:1,MaxBlur:300,Speed:0.001,Gravity:0,SSpeed:2,HSpeed:0.1,DamageAT:0,PreGap:4,BlastRadius:35,BlastDamage:70,BlastDuration:4},\
rangeblaster:{FireRate:200,Damage:125,Ink:110,Blur:1,AirBlur:1,MaxBlur:300,Speed:0.001,Gravity:0,SSpeed:2,HSpeed:0.1,DamageAT:0,PreGap:4,BlastRadius:40,BlastDamage:70,BlastDuration:7},\
clashblaster:{FireRate:60,Damage:60,Ink:40,Blur:1,AirBlur:1,MaxBlur:300,Speed:0.001,Gravity:0,SSpeed:2,HSpeed:0.28,DamageAT:0,PreGap:3,BlastRadius:42,BlastDamage:30,BlastDuration:3},\
sblast92:{FireRate:180,Damage:125,Ink:95,Blur:1,AirBlur:1,MaxBlur:300,Speed:0.001,Gravity:0,SSpeed:2,HSpeed:0.1,DamageAT:0,PreGap:4,BlastRadius:35,BlastDamage:70,BlastDuration:4}}}

#対物性能
data merge storage objectdamage: {\
shooter:{splattershot:35,splattershot_pro:40,ftgal:48,aerospray:24,nzap85:30},\
roller:{splatroller:150,carbonroller:181,dynamoroller:306,wideroller:300},\
charger:{eliter4k:360,splatcharger:320,squiffer:280,snipewriter:116},\
blasters:{blaster:125,rangeblaster:125,clashblaster:80,sblast92:125},\
specialweapon:{trizooka:1320,crabtank:100,killerwail51:7}\
}

#dust色
data merge storage dustcolor: {0:{r:0.122,g:0.122,b:1.000},1:{r:1.000,g:0.969,b:0.098},2:{r:1.000,g:0.329,b:0.329},3:{r:1.000,g:0.380,b:0.816},4:{r:0.376,g:1.000,b:0.251}}

#スペシャル組み合わせ
data merge storage subspecials: {\
shooter:{\
splattershot:{subWeapon:"suctionbomb",specialWeapon:"trizooka",specialPoint:210},\
splattershot_pro:{subWeapon:"angleshooter",specialWeapon:"crabtank",specialPoint:180},\
ftgal:{subWeapon:"splashwall",specialWeapon:"killerwail51",specialPoint:200},\
aerospray:{subWeapon:"angleshooter",specialWeapon:"reefslider",specialPoint:190},\
nzap85:{subWeapon:"suctionbomb",specialWeapon:"tacticooler",specialPoint:200}},\
roller:{\
splatroller:{subWeapon:"curingbomb",specialWeapon:"bigbubbler",specialPoint:180},\
carbonroller:{subWeapon:"splatbomb",specialWeapon:"trizooka",specialPoint:190},\
dynamoroller:{subWeapon:"sprinkler",specialWeapon:"tacticooler",specialPoint:190},\
wideroller:{subWeapon:"splashwall",specialWeapon:"crabtank",specialPoint:190}},\
charger:{\
eliter4k:{subWeapon:"inkmine",specialWeapon:"wavebreaker",specialPoint:210},\
splatcharger:{subWeapon:"splatbomb",specialWeapon:"killerwail51",specialPoint:220},\
squiffer:{subWeapon:"splashwall",specialWeapon:"bigbubbler",specialPoint:210},\
snipewriter:{subWeapon:"sprinkler",specialWeapon:"tacticooler",specialPoint:220}},\
blasters:{\
blaster:{subWeapon:"inkmine",specialWeapon:"bigbubbler",specialPoint:180},\
rangeblaster:{subWeapon:"suctionbomb",specialWeapon:"wavebreaker",specialPoint:210},\
clashblaster:{subWeapon:"splatbomb",specialWeapon:"trizooka",specialPoint:180},\
sblast92:{subWeapon:"sprinkler",specialWeapon:"reefslider",specialPoint:180}}}

#モデル
data merge storage models {\
shooter:{\
splattershot:"splatter_shot",splattershot_pro:"splatter_shot_pro",ftgal:"52gal",aerospray:"aerospray",nzap85:"nzap85"},\
roller:{\
splatroller:"splat_roller",carbonroller:"carbon_roller",dynamoroller:"dynamo_roller",wideroller:"wide_roller"},\
charger:{\
eliter4k:"e_liter_4k",splatcharger:"splat_charger",squiffer:"squiffer",snipewriter:"snipewriter"},\
blasters:{\
blaster:"blaster",rangeblaster:"range_blaster",clashblaster:"clashblaster",sblast92:"sblast92"}}

#エフェクト
effect give @a saturation infinite 0 true

tellraw @a[tag=operator] {"text":"リロードしました[1.21.6]"}
tellraw @a[tag=operator] {"text":"ゲームを開始する際は、pNumを付与してください"}