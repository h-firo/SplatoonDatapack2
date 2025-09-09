#パーティクル
$particle dust{color:[$(r),$(g),$(b)],scale:0.5} ~ ~ ~ 0 0 0 0 1 force @a

#攻撃判定
$execute as @e[tag=player,distance=..1] unless entity @s[level=$(owner)] run scoreboard players remove @s health 5
#execute as @e[tag=player,distance=..1] if predicate core:is_onground run scoreboard players remove @s health 5

#マーキング
#execute as @e[tag=player,distance=..1] if predicate core:is_onground run tag @s add Marking
$execute as @e[tag=player,distance=..1] unless entity @s[level=$(owner)] run tag @s add Marking
$execute as @e[tag=player,distance=..1,tag=Marking] run tag @s add Mark$(team)

#再帰
rotate @s ~5 ~
$execute unless entity @s[y_rotation=0..9] at @s positioned ~ ~0.5 ~ run function core:specialweapons/wavebreaker/circle with storage temp: $(owner)