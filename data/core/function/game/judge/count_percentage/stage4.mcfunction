#ナメロウ金属
#ブロック数を数える
$execute store result score team1 blockCounts run clone -232 -61 -20 -138 -48 23 -232 -61 -20 filtered $(team1)_concrete force
$execute store result score team2 blockCounts run clone -232 -61 -20 -138 -48 23 -232 -61 -20 filtered $(team2)_concrete force

title @a times 10 40 10
$title @a title [{"text":"[",bold:true,color:gray},{"text":"0","color":"$(text1)",bold:false},{"text":"　VS　",bold:true,color:gray},{"text":"0","color":"$(text2)",bold:false},{"text":"]",bold:true,color:gray}]