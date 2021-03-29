# mana in inventory
execute as @a store result score @s tmp run clear @s scute
execute as @a run scoreboard players operation #current mana += @s tmp

# big crystal
execute as @a[scores={broke_crystal=1..}] run function mechanics:crystals/big

# show progress
title @a[x=1991,y=99,z=1988,distance=..18] times 0 10 10
title @a[x=1991,y=99,z=1988,distance=..18] subtitle [{"score":{"name": "#recovered","objective": "broke_crystal"},"color": "dark_purple"}, "/", {"score":{"name": "#total","objective": "broke_crystal"}}]
title @a[x=1991,y=99,z=1988,distance=..18] title ""