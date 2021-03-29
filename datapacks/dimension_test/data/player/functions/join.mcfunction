tag @s add init
scoreboard players reset @s leave
clear @s carrot_on_a_stick
playsound minecraft:ambient.basalt_deltas.loop master @s ~ ~ ~ 10000 0.7
gamemode adventure @s

execute if score #status status matches 0 run tp @s -20 69 10
execute if score #status status matches 1 run tp @s 1991 99 2004 180 -14

execute if entity @a[tag=unlocked_jump] run function mechanics:spells/launch/give
execute if entity @a[tag=unlocked_twister] run function mechanics:spells/twister/give
execute if entity @a[tag=unlocked_water] run function mechanics:spells/water/give
execute if entity @a[tag=unlocked_gauntlet] run function mechanics:gauntlet/give