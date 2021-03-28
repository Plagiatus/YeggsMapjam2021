gamemode spectator @a[distance=..50]
execute at @a[distance=..50] run spectate @s @p

execute if score @s timer matches 40 run fill ~-1 ~1 ~ ~1 ~1 ~ twisting_vines
execute if score @s timer matches 40 run particle composter ~ ~1 ~ 1 0.25 0.25 0 10 force
execute if score @s timer matches 40 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
execute if score @s timer matches 60 run fill ~-1 ~2 ~ ~1 ~2 ~ twisting_vines
execute if score @s timer matches 60 run particle composter ~ ~2 ~ 1 0.25 0.25 0 10 force
execute if score @s timer matches 60 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
execute if score @s timer matches 80 run fill ~-1 ~3 ~ ~1 ~3 ~ twisting_vines
execute if score @s timer matches 80 run particle composter ~ ~3 ~ 1 0.25 0.25 0 10 force
execute if score @s timer matches 80 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
execute if score @s timer matches 100 run fill ~-1 ~4 ~ ~1 ~4 ~ twisting_vines
execute if score @s timer matches 100 run particle composter ~ ~4 ~ 1 0.25 0.25 0 10 force
execute if score @s timer matches 100 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
execute if score @s timer matches 120 run fill ~-1 ~5 ~ ~1 ~5 ~ twisting_vines
execute if score @s timer matches 120 run particle composter ~ ~5 ~ 1 0.25 0.25 0 10 force
execute if score @s timer matches 120 run playsound block.wet_grass.place block @a ~ ~ ~ 3 1 1
