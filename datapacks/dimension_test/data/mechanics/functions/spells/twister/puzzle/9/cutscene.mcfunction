gamemode spectator @a[distance=..50]
execute at @a[distance=..50] run spectate @s @p

tp @a ~ ~ ~

execute if score @s timer matches 40 run playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 3 0.85
execute if score @s timer matches 48 run playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 3 0.85
execute if score @s timer matches 52 run playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 3 0.85

execute if score @s timer matches 58 run playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 3 0.85
execute if score @s timer matches 62 run playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 3 1.25

execute if score @s timer matches 70 run fill 64 82 1037 64 82 1036 stone_brick_stairs[facing=west]
execute at @s if score @s timer matches 70 run playsound block.piston.extend block @a ~ ~ ~ 3 0.85

execute if score @s timer matches 80 run fill 65 82 1037 65 82 1036 stone_brick_stairs[facing=west]
execute if score @s timer matches 80 run fill 64 82 1037 64 82 1036 stone_bricks
execute at @s if score @s timer matches 80 run playsound block.piston.extend block @a ~ ~ ~ 3 0.85

execute if score @s timer matches 88 run playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 3 0.85
execute if score @s timer matches 92 run playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 3 1.25

execute if score @s timer matches 100 run fill 64 83 1037 64 83 1036 stone_brick_stairs[facing=west]
execute at @s if score @s timer matches 100 run playsound block.piston.extend block @a ~ ~ ~ 3 0.85
