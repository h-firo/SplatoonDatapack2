#スコアに反映
$scoreboard players set value stage $(stage)

#ランダムならランダムなステージをセット
execute unless score value stage matches 0..2 store result score value stage run random value 0..2

#ストレージに保存
execute as @a run function command:set_stage_macro with entity @s

tellraw @a[tag=operator] {"text":"ステージを設定しました"}