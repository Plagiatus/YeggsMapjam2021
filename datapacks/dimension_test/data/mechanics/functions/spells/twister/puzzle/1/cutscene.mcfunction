gamemode spectator @a[distance=..50]
execute at @a[distance=..50] run spectate @s @p

execute if score @s timer matches 40 run fill -3 71 980 -1 71 980 twisting_vines
execute if score @s timer matches 40 run particle composter -2 71 980 1 0.25 0.25 0 10 force
execute if score @s timer matches 40 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
execute if score @s timer matches 55 run fill -3 72 980 -1 72 980 twisting_vines
execute if score @s timer matches 55 run particle composter -2 72 980 1 0.25 0.25 0 10 force
execute if score @s timer matches 55 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
execute if score @s timer matches 70 run fill -3 73 980 -1 73 980 twisting_vines
execute if score @s timer matches 70 run particle composter -2 73 980 1 0.25 0.25 0 10 force
execute if score @s timer matches 70 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
execute if score @s timer matches 85 run fill -3 74 980 -1 74 980 twisting_vines
execute if score @s timer matches 85 run particle composter -2 74 980 1 0.25 0.25 0 10 force
execute if score @s timer matches 85 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
execute if score @s timer matches 100 run fill -3 75 980 -1 75 980 twisting_vines
execute if score @s timer matches 100 run particle composter -2 75 980 1 0.25 0.25 0 10 force
execute if score @s timer matches 100 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
