effect give @s levitation 1 100 true
scoreboard players reset @s cc
scoreboard players operation @s launch_timer = #settings launch_timer
particle minecraft:sweep_attack ~ ~ ~ 0.25 0.1 0.25 0 10 force @a
playsound minecraft:entity.villager.work_librarian player @a ~ ~ ~ 1 2