gamemode spectator @a[distance=..50]
execute at @a[distance=..50] run spectate @s @p

execute if score @s timer matches 40 run clone 23 79 989 25 81 989 23 80 989 masked move
execute if score @s timer matches 40 run particle dust 0.5 0.5 0.5 1 24 80 989 1 0.25 0.25 0 10 force
execute if score @s timer matches 40 run playsound entity.villager.work_mason block @a 19.139 81.2 980.374 3 0.75
execute if score @s timer matches 70 run clone 23 79 989 25 81 989 23 80 989 masked move
execute if score @s timer matches 70 run particle dust 0.5 0.5 0.5 1 24 80 989 1 0.25 0.25 0 10 force
execute if score @s timer matches 70 run playsound entity.villager.work_mason block @a 19.139 81.2 980.374 3 0.75
execute if score @s timer matches 100 run clone 23 79 989 25 81 989 23 80 989 masked move
execute if score @s timer matches 100 run particle dust 0.5 0.5 0.5 1 24 80 989 1 0.25 0.25 0 10 force
execute if score @s timer matches 100 run playsound entity.villager.work_mason block @a 19.139 81.2 980.374 3 0.75

