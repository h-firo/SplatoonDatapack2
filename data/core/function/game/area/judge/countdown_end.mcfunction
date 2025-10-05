title @a times 0 100 20
scoreboard players set is isJudge 0
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1
$execute if score team1 areaLowestCount matches 1.. if score team2 areaLowestCount matches 1.. run title @a title [{"text":"[",bold:true,color:gray},{"score":{name:"team1",objective:"areaLowestCount"},"color":"$(text1)",bold:false},{"text":"　VS　",bold:true,color:gray},{"score":{name:"team2",objective:"areaLowestCount"},"color":"$(text2)",bold:false},{"text":"]",bold:true,color:gray}]
$execute unless score team1 areaLowestCount matches 1.. run title @a title [{"text":"[",bold:true,color:gray},{"text":"KNOCKOUT!!","color":"$(text1)",bold:true},{"text":"]",bold:true,color:gray}]
$execute unless score team2 areaLowestCount matches 1.. run title @a title [{"text":"[",bold:true,color:gray},{"text":"KNOCKOUT!!","color":"$(text2)",bold:true},{"text":"]",bold:true,color:gray}]

#勝利チームメッセージ
$execute if score team1 areaLowestCount < team2 areaLowestCount run tellraw @a [{"text":"$(team1)",bold:true,color:"$(text1)"},{"text":"チームが優勝した！",color:white,bold:false}]
$execute if score team2 areaLowestCount < team1 areaLowestCount run tellraw @a [{"text":"$(team2)",bold:true,color:"$(text2)"},{"text":"チームが優勝した！",color:white,bold:false}]
execute if score team1 blockCounts = team2 blockCounts run tellraw @a {"text":"珍しい！引き分けだ！",color:white,bold:true}