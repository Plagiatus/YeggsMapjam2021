gamemode spectator @a[distance=..50]
execute at @a[distance=..50] run spectate @s @p

tp @a ~ ~ ~

execute if score @s timer matches 40 run clone 63 72 1004 64 73 1005 63 73 1004 masked force
execute at @s if score @s timer matches 40 run playsound block.piston.extend block @a ~ ~ ~ 3 0

execute if score @s timer matches 60 run clone 63 73 1004 64 74 1005 63 74 1004 masked force
execute at @s if score @s timer matches 60 run playsound block.piston.extend block @a ~ ~ ~ 3 0

execute if score @s timer matches 80 run clone 63 74 1004 64 75 1005 63 75 1004 masked force
execute at @s if score @s timer matches 80 run playsound block.piston.extend block @a ~ ~ ~ 3 0