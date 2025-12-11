#データを反映{Parts:{grizzcoblaster:{parts1:true,parts2:true,parts3:true}
$data merge storage player: {$(pNum):{Parts:{$(parts):{parts$(num):true}}}}
function command:parts_assemble with entity @s