scoreboard players reset @s cc
execute anchored eyes run particle minecraft:rain ^ ^ ^1 0.05 0.05 0.05 2 2
execute anchored eyes run particle minecraft:rain ^ ^0.3 ^1.5 0.1 0.1 0.1 2 4
execute anchored eyes run particle minecraft:rain ^ ^ ^2 0.2 0.1 0.2 2 8
execute anchored eyes run particle minecraft:rain ^ ^-0.2 ^2.5 0.4 0.1 0.4 2 12
playsound minecraft:weather.rain master @a ~ ~ ~ 0.15 2
playsound block.conduit.activate master @a ~ ~ ~ 0.8 2
playsound block.respawn_anchor.set_spawn master @a ~ ~ ~ 0.3 2

execute anchored eyes positioned ^ ^ ^3.5 as @e[type=sheep,tag=cloud_sheep,distance=..3] at @s run function mechanics:spells/water/interaction/sheep/hit