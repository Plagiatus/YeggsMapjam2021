execute if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute unless block ~ ~-0.1 ~ air run tag @s remove move_down
execute as @s[tag=!move_down] at @s run function mechanics:spells/twister/interaction/push_block/center

execute if entity @s[tag=on_ceiling] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1.5
tag @s remove on_ceiling