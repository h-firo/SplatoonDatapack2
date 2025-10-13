$execute if block ^-4 ^0.5 ^ #air if block ^-3 ^0.5 ^ #air if block ^-2 ^0.5 ^ #air if block ^-1 ^0.5 ^ #air run return run summon marker ^-4 ^ ^ {Tags:["squidRoll$(num)_2"]}
$execute if block ^-3 ^0.5 ^ #air if block ^-2 ^0.5 ^ #air if block ^-1 ^0.5 ^ #air run return run summon marker ^-3 ^ ^ {Tags:["squidRoll$(num)_2"]}
$execute if block ^-2 ^0.5 ^ #air if block ^-1 ^0.5 ^ #air run return run summon marker ^-2 ^ ^ {Tags:["squidRoll$(num)_2"]}
$execute if block ^-1 ^0.5 ^ #air run return run summon marker ^-1 ^ ^ {Tags:["squidRoll$(num)_2"]}
$summon marker ~ ~ ~ {Tags:["squidRoll$(num)_2"]}