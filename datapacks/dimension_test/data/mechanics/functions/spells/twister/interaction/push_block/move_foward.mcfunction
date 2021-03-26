execute if block ^ ^ ^0.5 air run tp @s ^ ^ ^0.1
execute if score @s value matches 1 run particle minecraft:falling_dust stone ~-0.4 ~ ~ 0 0 0.25 0 10 force
execute if score @s value matches 2 run particle minecraft:falling_dust stone ~0.4 ~ ~ 0 0 0.25 0 10 force
execute if score @s value matches 3 run particle minecraft:falling_dust stone ~ ~ ~-0.4 0.25 0 0 0 10 force
execute if score @s value matches 4 run particle minecraft:falling_dust stone ~ ~ ~0.4 0.25 0 0 0 10 force


execute unless block ^ ^ ^0.5 air run tag @s remove move