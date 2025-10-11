#曲を決める
stopsound @a record
execute store result score value music run random value 0..16

#曲によって処理を変える
execute if score value music matches 0 as @a at @s run playsound custom:amarugamania record @s ~ ~ ~ 1 1
execute if score value music matches 1 as @a at @s run playsound custom:clickbait record @s ~ ~ ~ 1 1
execute if score value music matches 2 as @a at @s run playsound custom:counterstop record @s ~ ~ ~ 1 1
execute if score value music matches 3 as @a at @s run playsound custom:glide record @s ~ ~ ~ 1 1
execute if score value music matches 4 as @a at @s run playsound custom:halland record @s ~ ~ ~ 1 1
execute if score value music matches 5 as @a at @s run playsound custom:harukazeto_petorikoru record @s ~ ~ ~ 1 1
execute if score value music matches 6 as @a at @s run playsound custom:hurusurottoru_tentakuru record @s ~ ~ ~ 1 1
execute if score value music matches 7 as @a at @s run playsound custom:kimiironisomete record @s ~ ~ ~ 1 1
execute if score value music matches 8 as @a at @s run playsound custom:noplansurvives record @s ~ ~ ~ 1 1
execute if score value music matches 9 as @a at @s run playsound custom:rippuru_rehurein record @s ~ ~ ~ 1 1
execute if score value music matches 10 as @a at @s run playsound custom:ripstop_go record @s ~ ~ ~ 1 1
execute if score value music matches 11 as @a at @s run playsound custom:seamenow record @s ~ ~ ~ 1 1
execute if score value music matches 12 as @a at @s run playsound custom:splattack record @s ~ ~ ~ 1 1
execute if score value music matches 13 as @a at @s run playsound custom:tettuipisyagerudo record @s ~ ~ ~ 1 1
execute if score value music matches 14 as @a at @s run playsound custom:tu-ton_teritori record @s ~ ~ ~ 1 1
execute if score value music matches 15 as @a at @s run playsound custom:tyoukengouaheddo record @s ~ ~ ~ 1 1
execute if score value music matches 16 as @a at @s run playsound custom:zengen_tekkai record @s ~ ~ ~ 1 1

#曲の名前
execute if score value music matches 0 as @a at @s run tellraw @s [{"text":"♪","color":"#FF2424",bold:false},{"text":"アマルガマニア","color":"#FF2424","bold":true}]
execute if score value music matches 1 as @a at @s run tellraw @s [{"text":"♪","color":"#ffcf32",bold:false},{"text":"Clickbait","color":"#ffcf32","bold":true}]
execute if score value music matches 2 as @a at @s run tellraw @s [{"text":"♪","color":"#ff32e4",bold:false},{"text":"Counter Stop","color":"#ff32e4","bold":true}]
execute if score value music matches 3 as @a at @s run tellraw @s [{"text":"♪","color":"#a77832",bold:false},{"text":"Glide","color":"#a77832","bold":true}]
execute if score value music matches 4 as @a at @s run tellraw @s [{"text":"♪","color":"#a77832",bold:false},{"text":"Halland","color":"#a77832","bold":true}]
execute if score value music matches 5 as @a at @s run tellraw @s [{"text":"♪","color":"#ffa5eb",bold:false},{"text":"春風とトペリコール","color":"#ffa5eb","bold":true}]
execute if score value music matches 6 as @a at @s run tellraw @s [{"text":"♪","color":"#677dfd",bold:false},{"text":"フルスロットル・テンタクル","color":"#677dfd","bold":true}]
execute if score value music matches 7 as @a at @s run tellraw @s [{"text":"♪","color":"#ffa5eb",bold:false},{"text":"キミ色に染めて","color":"#ffa5eb","bold":true}]
execute if score value music matches 8 as @a at @s run tellraw @s [{"text":"♪","color":"#4fcdff",bold:false},{"text":"No Plan Survives","color":"#4fcdff","bold":true}]
execute if score value music matches 9 as @a at @s run tellraw @s [{"text":"♪","color":"#677dfd",bold:false},{"text":"リップル・リフレイン","color":"#677dfd","bold":true}]
execute if score value music matches 10 as @a at @s run tellraw @s [{"text":"♪","color":"#07ff45",bold:false},{"text":"Ripstop & Go","color":"#07ff45","bold":true}]
execute if score value music matches 11 as @a at @s run tellraw @s [{"text":"♪","color":"#ff9c07",bold:false},{"text":"Sea Me Now","color":"#ff9c07","bold":true}]
execute if score value music matches 12 as @a at @s run tellraw @s [{"text":"♪","color":"#ffcf32",bold:false},{"text":"Splattack!","color":"#ffcf32","bold":true}]
execute if score value music matches 13 as @a at @s run tellraw @s [{"text":"♪","color":"#1da518",bold:false},{"text":"鉄槌ピシャゲルド","color":"#1da518","bold":true}]
execute if score value music matches 14 as @a at @s run tellraw @s [{"text":"♪","color":"#d2ff31",bold:false},{"text":"ツートン・テリトリー","color":"#d2ff31","bold":true}]
execute if score value music matches 15 as @a at @s run tellraw @s [{"text":"♪","color":"#1da518",bold:false},{"text":"張拳ゴーアヘッド","color":"#1da518","bold":true}]
execute if score value music matches 16 as @a at @s run tellraw @s [{"text":"♪","color":"#677dfd",bold:false},{"text":"ゼンゲン・テッカイ","color":"#677dfd","bold":true}]