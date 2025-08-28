#防具立てを回転
$execute as @n[tag=stageView$(stage)] at @s run tp @s ~ ~0.5 ~
$execute at @n[tag=stageView$(stage)] run rotate @n[tag=stageView$(stage)] ~0.5 ~0.1