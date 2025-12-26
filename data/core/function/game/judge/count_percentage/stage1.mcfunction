#タラポートショッピングパーク
#ブロック数を数える
$execute store result score team1 blockCounts run clone 140 -61 -164 191 -50 -69 140 -61 -164 filtered $(team1)_concrete force
$execute store result score team2 blockCounts run clone 140 -61 -164 191 -50 -69 140 -61 -164 filtered $(team2)_concrete force

title @a times 10 40 10
$title @a title [{"text":"[",bold:true,color:gray},{"text":"0","color":"$(text1)",bold:false},{"text":"　VS　",bold:true,color:gray},{"text":"0","color":"$(text2)",bold:false},{"text":"]",bold:true,color:gray}]