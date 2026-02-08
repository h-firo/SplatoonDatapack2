$execute if score @s team matches $(team) run return fail
$function core:damages/remove_health {value:1,type:"burstbomb",killer:$(owner)}
effect give @s darkness 8 10 false