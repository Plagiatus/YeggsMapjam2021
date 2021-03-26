execute if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute unless block ~ ~-0.1 ~ air run tag @s remove move_down
tag @s[tag=!move_down] remove on_ceiling
execute as @s[tag=!move_down] at @s run function mechanics:spells/twister/interaction/push_block/center