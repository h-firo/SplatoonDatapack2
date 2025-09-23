title @a times 0 100 20
scoreboard players set is isJudge 0
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1
$title @a title [{"text":"[",bold:true,color:gray},{"score":{name:"team1",objective:"blockCounts"},"color":"$(text1)",bold:false},{"text":"　VS　",bold:true,color:gray},{"score":{name:"team2",objective:"blockCounts"},"color":"$(text2)",bold:false},{"text":"]",bold:true,color:gray}]

#勝利チームメッセージ
$execute if score team1 blockCounts > team2 blockCounts run tellraw @a [{"text":"$(team1)",bold:true,color:"$(text1)"},{"text":"チームが優勝した！",color:white,bold:false}]
$execute if score team2 blockCounts > team1 blockCounts run tellraw @a [{"text":"$(team2)",bold:true,color:"$(text2)"},{"text":"チームが優勝した！",color:white,bold:false}]
execute if score team1 blockCounts = team2 blockCounts run tellraw @a {"text":"珍しい！引き分けだ！",color:white,bold:true}