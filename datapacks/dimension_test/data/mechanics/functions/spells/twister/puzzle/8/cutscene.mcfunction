gamemode spectator @a[distance=..50]
execute at @a[distance=..50] run spectate @s @p

tp @a ~ ~ ~

execute if score @s timer matches 40 run clone 62 72 1009 63 73 1010 62 73 1009 masked force
execute at @s if score @s timer matches 40 run playsound block.piston.extend block @a ~ ~ ~ 3 0

execute if score @s timer matches 60 run clone 62 73 1009 63 74 1010 62 74 1009 masked force
execute at @s if score @s timer matches 60 run playsound block.piston.extend block @a ~ ~ ~ 3 0

execute if score @s timer matches 80 run clone 62 74 1009 63 75 1010 62 75 1009 masked force
execute at @s if score @s timer matches 80 run playsound block.piston.extend block @a ~ ~ ~ 3 0