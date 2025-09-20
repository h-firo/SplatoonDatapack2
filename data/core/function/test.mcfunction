data modify storage concat: args set value ["effect","resistance"," ","1"," ","5"," ","2"]
function concat:concat_all
tellraw @a {"storage":"concat:","nbt":"result"}