#execute if score @s value matches 1 if block ~ ~ ~-0.51 #mechanics:twister if block ~ ~ ~0.51 air run tp @s ~ ~ ~0.25 
#execute if score @s value matches 1 if block ~ ~ ~-0.51 #mechanics:twister unless block ~ ~ ~0.51 air run tag @s remove move
#execute if score @s value matches 2 if block ~ ~ ~0.51 #mechanics:twister if block ~ ~ ~-0.51 air run tp @s ~ ~ ~-0.25 
#execute if score @s value matches 2 if block ~ ~ ~0.51 #mechanics:twister unless block ~ ~ ~-0.51 air run tag @s remove move
#execute if score @s value matches 3 if block ~-0.51 ~ ~ #mechanics:twister if block ~0.51 ~ ~ air run tp @s ~0.25 ~ ~ 
#execute if score @s value matches 3 if block ~-0.51 ~ ~ #mechanics:twister unless block ~0.51 ~ ~ air run tag @s remove move
#execute if score @s value matches 4 if block ~0.51 ~ ~ #mechanics:twister if block ~-0.51 ~ ~ air run tp @s ~-0.25 ~ ~ 
#execute if score @s value matches 4 if block ~0.51 ~ ~ #mechanics:twister unless block ~-0.51 ~ ~ air run tag @s remove move

execute if score @s value matches 1 if block ~ ~ ~-0.51 #mechanics:twister if block ~ ~ ~0.51 air positioned ~ ~ ~1.01 unless entity @e[type=armor_stand,tag=push_block,limit=1,distance=..0.1] positioned ~ ~ ~-1.01 run tp @s ~ ~ ~0.25 
execute if score @s value matches 1 positioned ~ ~ ~0.51 unless block ~ ~ ~ air run tag @s remove move
execute if score @s value matches 1 positioned ~ ~ ~1.01 if entity @e[type=armor_stand,tag=push_block,limit=1,distance=..0.1] run tag @s remove move

execute if score @s value matches 2 if block ~ ~ ~0.51 #mechanics:twister if block ~ ~ ~-0.51 air positioned ~ ~ ~-1.01 unless entity @e[type=armor_stand,tag=push_block,limit=1,distance=..0.1] positioned ~ ~ ~1.01 run tp @s ~ ~ ~-0.25 
execute if score @s value matches 2 positioned ~ ~ ~-0.51 unless block ~ ~ ~ air run tag @s remove move
execute if score @s value matches 2 positioned ~ ~ ~-1.01 if entity @e[type=armor_stand,tag=push_block,limit=1,distance=..0.1] run tag @s remove move

execute if score @s value matches 3 if block ~-0.51 ~ ~ #mechanics:twister if block ~0.51 ~ ~ air positioned ~1.01 ~ ~ unless entity @e[type=armor_stand,tag=push_block,limit=1,distance=..0.1] positioned ~-1.01 ~ ~ run tp @s ~0.25 ~ ~ 
execute if score @s value matches 3 positioned ~0.51 ~ ~ unless block ~ ~ ~ air run tag @s remove move
execute if score @s value matches 3 positioned ~1.01 ~ ~ if entity @e[type=armor_stand,tag=push_block,limit=1,distance=..0.1] run tag @s remove move

execute if score @s value matches 4 if block ~0.51 ~ ~ #mechanics:twister if block ~-0.51 ~ ~ air positioned ~-1.01 ~ ~ unless entity @e[type=armor_stand,tag=push_block,limit=1,distance=..0.1] positioned ~1.01 ~ ~ run tp @s ~-0.25 ~ ~ 
execute if score @s value matches 4 positioned ~-0.51 ~ ~ unless block ~ ~ ~ air run tag @s remove move
execute if score @s value matches 4 positioned ~-1.01 ~ ~ if entity @e[type=armor_stand,tag=push_block,limit=1,distance=..0.1] run tag @s remove move


execute if score @s[tag=!on_ceiling] value matches 1 run particle minecraft:falling_dust light_gray_wool ~0.200 ~0.05 ~-0.48 0.25 0 0 1 0 force
execute if score @s[tag=!on_ceiling] value matches 1 run particle minecraft:falling_dust light_gray_wool ~-0.20 ~0.05 ~-0.48 0.25 0 0 1 0 force
execute if score @s[tag=!on_ceiling] value matches 2 run particle minecraft:falling_dust light_gray_wool ~0.200 ~0.05 ~0.480 0.25 0 0 1 0 force
execute if score @s[tag=!on_ceiling] value matches 2 run particle minecraft:falling_dust light_gray_wool ~-0.20 ~0.05 ~0.480 0.25 0 0 1 0 force
execute if score @s[tag=!on_ceiling] value matches 3 run particle minecraft:falling_dust light_gray_wool ~-0.48 ~0.05 ~0.200 0 0 0.25 1 0 force
execute if score @s[tag=!on_ceiling] value matches 3 run particle minecraft:falling_dust light_gray_wool ~-0.48 ~0.05 ~-0.20 0 0 0.25 1 0 force
execute if score @s[tag=!on_ceiling] value matches 4 run particle minecraft:falling_dust light_gray_wool ~0.480 ~0.05 ~0.200 0 0 0.25 1 0 force
execute if score @s[tag=!on_ceiling] value matches 4 run particle minecraft:falling_dust light_gray_wool ~0.480 ~0.05 ~-0.20 0 0 0.25 1 0 force

execute if score @s[tag=on_ceiling] value matches 1 run particle minecraft:falling_dust light_gray_wool ~0.200 ~0.95 ~-0.48 0.25 0 0 1 0 force
execute if score @s[tag=on_ceiling] value matches 1 run particle minecraft:falling_dust light_gray_wool ~-0.20 ~0.95 ~-0.48 0.25 0 0 1 0 force
execute if score @s[tag=on_ceiling] value matches 2 run particle minecraft:falling_dust light_gray_wool ~0.200 ~0.95 ~0.480 0.25 0 0 1 0 force
execute if score @s[tag=on_ceiling] value matches 2 run particle minecraft:falling_dust light_gray_wool ~-0.20 ~0.95 ~0.480 0.25 0 0 1 0 force
execute if score @s[tag=on_ceiling] value matches 3 run particle minecraft:falling_dust light_gray_wool ~-0.48 ~0.95 ~0.200 0 0 0.25 1 0 force
execute if score @s[tag=on_ceiling] value matches 3 run particle minecraft:falling_dust light_gray_wool ~-0.48 ~0.95 ~-0.20 0 0 0.25 1 0 force
execute if score @s[tag=on_ceiling] value matches 4 run particle minecraft:falling_dust light_gray_wool ~0.480 ~0.95 ~0.200 0 0 0.25 1 0 force
execute if score @s[tag=on_ceiling] value matches 4 run particle minecraft:falling_dust light_gray_wool ~0.480 ~0.95 ~-0.20 0 0 0.25 1 0 force

execute if score @s timer matches 3.. run scoreboard players set @s timer 0
scoreboard players add @s timer 1
execute if score @s timer matches 1 run playsound block.grindstone.use block @a ~ ~ ~ 1 1
execute if entity @s[tag=!move] run playsound minecraft:entity.villager.work_mason block @a ~ ~ ~ 1 1
scoreboard players reset @s[tag=!move] value
scoreboard players reset @s[tag=!move] timer
execute as @s[tag=!move] at @s run function mechanics:spells/twister/interaction/push_block/center