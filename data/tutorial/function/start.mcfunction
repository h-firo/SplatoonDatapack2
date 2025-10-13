scoreboard players set mode tutorialMode 0
title @a times 10 60 10
advancement revoke @a only core:wallclimbed

#スコアリセット
scoreboard players set @a tutorial.canSquid 0
scoreboard players set @a tutorial.moveSquid 0
scoreboard players set @a tutorial.moveInk 0
scoreboard players set @a tutorial.inkShot 0
scoreboard players set @a tutorial.wallclimbed 0
scoreboard players set @a tutorial.specialPoint 0
scoreboard players set @a tutorial.specialActive 0

scoreboard players set @a tutorial.isStarted 0

#ステージ初期化
function tutorial:stage_reset

#初期状態
execute as @a run function command:join_team {team:4}
effect give @a slowness infinite 100 true
fill -207 -58 -210 -207 -56 -205 jungle_fence
setblock -181 -55 -210 chest[facing=west]{Items:[{id:"diamond",components:{item_name:{"translate":"item.weapon.splattershot"},item_model:"splatter_shot"},count:1,Slot:13}],lock:{items:"string"}}

#チュートリアル場所へテレポート
spreadplayers -211 -207 0 2.5 false @a

#テキスト表示
tellraw @a [{"text":"--チュートリアル--","color":"white",bold:true}]
tellraw @a [{"text":"この地を探検して、イカしたアクションをたたきこもう！","color":"white",bold:true}]