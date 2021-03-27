execute if block ~ ~1 ~ air run tp @s ~ ~0.1 ~
execute unless block ~ ~1 ~ air run tag @s remove move_up
execute as @s[tag=!move_up] at @s run function mechanics:spells/twister/interaction/push_block/center

execute if entity @s[tag=!on_ceiling] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.5
tag @s add on_ceiling