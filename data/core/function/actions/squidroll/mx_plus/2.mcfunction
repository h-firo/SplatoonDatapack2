scoreboard players set @s rollMarkerSummon 0
execute if block ^4 ^0.5 ^ #air run scoreboard players set @s rollMarkerSummon 4
execute if block ^3 ^0.5 ^ #air run scoreboard players set @s rollMarkerSummon 3
execute if block ^2 ^0.5 ^ #air run scoreboard players set @s rollMarkerSummon 2
execute if block ^1 ^0.5 ^ #air run scoreboard players set @s rollMarkerSummon 1

$execute if score @s rollMarkerSummon matches 4 run return run summon marker ^4 ^ ^ {Tags:["squidRoll$(num)_2"]}
$execute if score @s rollMarkerSummon matches 3 run return run summon marker ^3 ^ ^ {Tags:["squidRoll$(num)_2"]}
$execute if score @s rollMarkerSummon matches 2 run return run summon marker ^2 ^ ^ {Tags:["squidRoll$(num)_2"]}
$execute if score @s rollMarkerSummon matches 1 run return run summon marker ^1 ^ ^ {Tags:["squidRoll$(num)_2"]}
$summon marker ~ ~ ~ {Tags:["squidRoll$(num)_2"]}