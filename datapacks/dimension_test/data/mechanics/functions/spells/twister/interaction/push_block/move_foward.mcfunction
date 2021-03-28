#Fall Down
tag @e[type=shulker,distance=..1,limit=1,sort=nearest] add tmp
execute if entity @s[tag=!on_ceiling] positioned ~-0.5 ~-0.11 ~-0.5 if block ~ ~ ~ #mechanics:block_move_through if block ~0.99 ~ ~0.99 #mechanics:block_move_through unless entity @e[type=shulker,dx=0,tag=!tmp] run tag @s add falling
tp @s[tag=falling,tag=!on_ceiling] ~ ~-0.1 ~

#Fall Up
execute if entity @s[tag=on_ceiling] positioned ~-0.5 ~0.1 ~-0.5 if block ~0.01 ~ ~0.01 #mechanics:block_move_through if block ~0.99 ~1 ~0.99 #mechanics:block_move_through unless entity @e[type=shulker,dx=0,tag=!tmp] run tag @s add falling
tp @s[tag=falling,tag=on_ceiling] ~ ~0.1 ~

#South
execute at @s if score @s[tag=!falling] value matches 1 unless block ~ ~0.3 ~0.51 #mechanics:block_move_through run tag @s remove move
execute at @s if score @s[tag=!falling] value matches 1 positioned ~ ~0.3 ~1.01 if entity @e[type=shulker,tag=!tmp,limit=1,distance=..0.5] run tag @s remove move
execute at @s if score @s[tag=!falling,tag=move] value matches 1 if block ~ ~ ~0.25 #mechanics:block_move_through run tp @s ~ ~ ~0.25 

#North
execute at @s if score @s[tag=!falling] value matches 2 unless block ~ ~0.3 ~-0.51 #mechanics:block_move_through run tag @s remove move
execute at @s if score @s[tag=!falling] value matches 2 positioned ~ ~ ~-0.99 if entity @e[type=shulker,tag=!tmp,limit=1,distance=..0.5] run tag @s remove move
execute at @s if score @s[tag=!falling,tag=move] value matches 2 if block ~ ~0.3 ~-0.25 #mechanics:block_move_through run tp @s ~ ~ ~-0.25 

#East
execute at @s if score @s[tag=!falling] value matches 3 unless block ~0.51 ~0.3 ~ #mechanics:block_move_through run tag @s remove move
execute at @s if score @s[tag=!falling] value matches 3 positioned ~1.01 ~ ~ if entity @e[type=shulker,tag=!tmp,limit=1,distance=..0.5] run tag @s remove move
execute at @s if score @s[tag=!falling,tag=move] value matches 3 if block ~0.25 ~0.3 ~ #mechanics:block_move_through run tp @s ~0.25 ~ ~ 

#West
execute at @s if score @s[tag=!falling] value matches 4 unless block ~-0.51 ~0.3 ~ #mechanics:block_move_through run tag @s remove move
execute at @s if score @s[tag=!falling] value matches 4 positioned ~-0.99 ~ ~ if entity @e[type=shulker,tag=!tmp,limit=1,distance=..0.5] run tag @s remove move
execute at @s if score @s[tag=!falling,tag=move] value matches 4 if block ~-0.25 ~0.3 ~ #mechanics:block_move_through run tp @s ~-0.25 ~ ~ 


execute if score @s[tag=!falling,tag=!on_ceiling] value matches 1 run particle minecraft:falling_dust light_gray_wool ~0.200 ~0.05 ~-0.48 0.25 0 0 1 0 force
execute if score @s[tag=!falling,tag=!on_ceiling] value matches 1 run particle minecraft:falling_dust light_gray_wool ~-0.20 ~0.05 ~-0.48 0.25 0 0 1 0 force
execute if score @s[tag=!falling,tag=!on_ceiling] value matches 2 run particle minecraft:falling_dust light_gray_wool ~0.200 ~0.05 ~0.480 0.25 0 0 1 0 force
execute if score @s[tag=!falling,tag=!on_ceiling] value matches 2 run particle minecraft:falling_dust light_gray_wool ~-0.20 ~0.05 ~0.480 0.25 0 0 1 0 force
execute if score @s[tag=!falling,tag=!on_ceiling] value matches 3 run particle minecraft:falling_dust light_gray_wool ~-0.48 ~0.05 ~0.200 0 0 0.25 1 0 force
execute if score @s[tag=!falling,tag=!on_ceiling] value matches 3 run particle minecraft:falling_dust light_gray_wool ~-0.48 ~0.05 ~-0.20 0 0 0.25 1 0 force
execute if score @s[tag=!falling,tag=!on_ceiling] value matches 4 run particle minecraft:falling_dust light_gray_wool ~0.480 ~0.05 ~0.200 0 0 0.25 1 0 force
execute if score @s[tag=!falling,tag=!on_ceiling] value matches 4 run particle minecraft:falling_dust light_gray_wool ~0.480 ~0.05 ~-0.20 0 0 0.25 1 0 force

execute if score @s[tag=!falling,tag=on_ceiling] value matches 1 run particle minecraft:falling_dust light_gray_wool ~0.200 ~0.95 ~-0.48 0.25 0 0 1 0 force
execute if score @s[tag=!falling,tag=on_ceiling] value matches 1 run particle minecraft:falling_dust light_gray_wool ~-0.20 ~0.95 ~-0.48 0.25 0 0 1 0 force
execute if score @s[tag=!falling,tag=on_ceiling] value matches 2 run particle minecraft:falling_dust light_gray_wool ~0.200 ~0.95 ~0.480 0.25 0 0 1 0 force
execute if score @s[tag=!falling,tag=on_ceiling] value matches 2 run particle minecraft:falling_dust light_gray_wool ~-0.20 ~0.95 ~0.480 0.25 0 0 1 0 force
execute if score @s[tag=!falling,tag=on_ceiling] value matches 3 run particle minecraft:falling_dust light_gray_wool ~-0.48 ~0.95 ~0.200 0 0 0.25 1 0 force
execute if score @s[tag=!falling,tag=on_ceiling] value matches 3 run particle minecraft:falling_dust light_gray_wool ~-0.48 ~0.95 ~-0.20 0 0 0.25 1 0 force
execute if score @s[tag=!falling,tag=on_ceiling] value matches 4 run particle minecraft:falling_dust light_gray_wool ~0.480 ~0.95 ~0.200 0 0 0.25 1 0 force
execute if score @s[tag=!falling,tag=on_ceiling] value matches 4 run particle minecraft:falling_dust light_gray_wool ~0.480 ~0.95 ~-0.20 0 0 0.25 1 0 force

execute as @s[tag=falling,tag=!move] at @s run function mechanics:spells/twister/interaction/push_block/center
execute unless score @s[tag=!falling] value matches 1.. run tag @s remove move
tag @e[type=shulker] remove tmp

execute if score @s[tag=!falling] timer matches 3.. run scoreboard players set @s timer 0
scoreboard players add @s[tag=!falling] timer 1
execute if entity @s[tag=!falling,scores={timer=1,value=1..}] run playsound block.grindstone.use block @a ~ ~ ~ 1 1
execute if entity @s[tag=!move] run playsound minecraft:entity.villager.work_mason block @a ~ ~ ~ 1 1
scoreboard players reset @s[tag=!move] value
scoreboard players reset @s[tag=!move] timer
execute at @s[tag=!move] run function mechanics:spells/twister/interaction/push_block/center
tag @s remove falling