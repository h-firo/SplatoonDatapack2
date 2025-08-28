#スコアに反映
$scoreboard players set value stage $(stage)

#ランダムならランダムなステージをセット
execute unless score value stage matches 0..2 store result score value stage run random value 0..2

tellraw @a[tag=operator] {"text":"ステージを設定しました"}