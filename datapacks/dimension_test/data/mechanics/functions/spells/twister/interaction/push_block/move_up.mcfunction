execute if block ~ ~1 ~ air run tp @s ~ ~0.1 ~
execute unless block ~ ~1 ~ air run tag @s remove move_up
tag @s[tag=!move_up] add on_ceiling
execute as @s[tag=!move_up] at @s run function mechanics:spells/twister/interaction/push_block/center