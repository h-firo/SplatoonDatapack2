scoreboard players add time tutorialTime 1

#テキスト表示
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 0 run \
tellraw @a [{"text":"〇イカ状態をついこなそう！\n","color":"gold",bold:true},\
            {"keybind":"key.sneak","color":"white",bold:true},{"text":"を押すとイカになれるぞ！","color":"white",bold:false},\
            {"text":"イカになってみよう！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 1 unless score is tutorial.isStarted matches 1 run effect clear @a slowness
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 1 run \
tellraw @a [{"keybind":"key.sprint","color":"white",bold:true},{"text":"キーでダッシュしているときも、イカ状態になる。\n","color":"white",bold:false},\
            {"text":"イカ状態で移動してみよう！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 2 unless score is tutorial.isStarted matches 1 run fill -207 -58 -210 -207 -56 -205 air destroy
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 2 run \
tellraw @a [{"text":"インクの上でイカになると、インクの中に潜ることができる。\n","color":"white",bold:false},\
            {"text":"インクの中を潜って移動してみよう！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 3 unless score is tutorial.isStarted matches 1 run data modify block -181 -55 -210 lock set value {}
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 3 run \
tellraw @a [{"text":"怪しげな箱の鍵が解錠されたようだ...\n","color":"white",bold:false},\
            {"text":"箱の中身を確認してみよう！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 4 as @a unless score is tutorial.isStarted matches 1 run function command:set_weapon {category:shooter,weapon:splattershot}
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 4 run \
tellraw @a [{"text":"〇ブキをついこなそう！\n","color":"green",bold:true},\
            {"text":"ブキ","color":"gold",bold:true},{"text":"を手に入れた！\n","color":"white",bold:false},\
            {"text":"右クリックでインクを発射しよう！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 5 run \
tellraw @a [{"text":"カベにインクを塗って、近くで","color":"white",bold:false},{"keybind":"key.sneak","color":"white",bold:true},{"text":"を押すと、カベをのぼることができる。\n","color":"white",bold:false},\
            {"text":"カベをのぼって、先へ進め！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 6 unless score is tutorial.isStarted matches 1 run tp @a -165 -59 -205
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 6 unless score is tutorial.isStarted matches 1 run function tutorial:target_summon
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 6 run \
tellraw @a [{"text":"発射したインクを相手に当てることで、ダメージを与えられる。\n","color":"white",bold:false},\
            {"text":"散らばっている５体のデコイを倒そう！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 7 unless score is tutorial.isStarted matches 1 run function tutorial:target_summon_far
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 7 run \
tellraw @a [{"keybind":"key.drop","color":"white",bold:true},{"text":"を押すと、","color":"white",bold:false},{"text":"ボム","color":"blue",bold:true},{"text":"を投げられる。\n","color":"white",bold:false},\
            {"text":"遠くにいる３体のデコイを、ボムを使って倒せ！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 8 unless score is tutorial.isStarted matches 1 run fill -151 -58 -190 -146 -58 -182 spruce_planks
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 8 run \
tellraw @a [{"text":"インクで塗りを広げると、スペシャルポイントがたまる（ホットバー２スロット目の耐久値が示す）。\n","color":"white",bold:false},\
            {"text":"スペシャルポイントをためよう！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 9 run \
tellraw @a [{"text":"スペシャルポイントがたまっているときに、スペシャルウェポンを持って","color":"white",bold:false},{"keybind":"key.use","color":"white",bold:true},{"text":"でスペシャルウェポンを発動できる。","color":"white",bold:false},\
            {"text":"スペシャルウェポンを発動しよう！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 if score mode tutorialMode matches 10 unless score is tutorial.isStarted matches 1 run function tutorial:target_summon_special
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 10 as @a run scoreboard players set @s specialPoint 300
execute if score time tutorialTime matches 30 if score mode tutorialMode matches 10 run \
tellraw @a [{"text":"ウルトラショット","color":"red",bold:true},{"text":"は、","color":"white",bold:false},{"keybind":"key.use","color":"white",bold:true},{"text":"で超強力なインク弾を３発発射できる。","color":"white",bold:false},\
            {"text":"ウルトラショットでデコイを倒せ！","color":"aqua",bold:false}]

execute if score time tutorialTime matches 30 run scoreboard players set is tutorial.isStarted 1
execute if score time tutorialTime matches 30 run scoreboard players set time tutorialTime -170

#イカ状態になるまで
execute if score mode tutorialMode matches 0 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/0
execute if score mode tutorialMode matches 1 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/1
execute if score mode tutorialMode matches 2 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/2
execute if score mode tutorialMode matches 3 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/3
execute if score mode tutorialMode matches 4 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/4
execute if score mode tutorialMode matches 5 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/5
execute if score mode tutorialMode matches 6..7 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/6
execute if score mode tutorialMode matches 8 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/8
execute if score mode tutorialMode matches 9 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/9
execute if score mode tutorialMode matches 10 if score is tutorial.isStarted matches 1 run function tutorial:mode_tick/6
execute if score mode tutorialMode matches 11 if score is tutorial.isStarted matches 1 run function tutorial:end