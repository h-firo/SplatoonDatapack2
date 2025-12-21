scoreboard players set is isGame 0
stopsound @a record
spreadplayers -78 -169 0 5 under -50 false @a
execute as @a run function item:select/weapon/type_select_open
kill @e[type=mannequin,tag=playerAvator]
kill @e[type=armor_stand,tag=spawners]
kill @e[type=item_display,tag=spawnerRides]