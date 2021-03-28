gamemode spectator @a[distance=..50]
execute at @a[distance=..50] run spectate @s @p

execute if score @s timer matches 40 run clone ~ ~ ~ ~2 ~2 ~ ~ ~1 ~ masked move
execute if score @s timer matches 40 run particle dust 0.5 0.5 0.5 1 ~-7 ~7 ~12 1 0.25 0.25 0 10 force
execute if score @s timer matches 40 run playsound entity.villager.work_mason block @a ~ ~ ~ 3 0.75
execute if score @s timer matches 70 run clone ~ ~ ~ ~2 ~2 ~ ~ ~1 ~ masked move
execute if score @s timer matches 70 run particle dust 0.5 0.5 0.5 1 ~-7 ~8 ~12 1 0.25 0.25 0 10 force
execute if score @s timer matches 70 run playsound entity.villager.work_mason block @a ~ ~ ~ 3 0.75
execute if score @s timer matches 100 run clone ~ ~ ~ ~2 ~2 ~ ~ ~1 ~ masked move
execute if score @s timer matches 100 run particle dust 0.5 0.5 0.5 1 ~-7 ~9 ~12 1 0.25 0.25 0 10 force
execute if score @s timer matches 100 run playsound entity.villager.work_mason block @a ~ ~ ~ 3 0.75
