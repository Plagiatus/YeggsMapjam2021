gamemode spectator @a[distance=..50]
execute at @a[distance=..50] run spectate @s @p

tp @a ~ ~ ~

execute if score @s timer matches 40 run setblock 32 82 1014 redstone_lamp[lit=true]
execute at @s if score @s timer matches 40 run playsound minecraft:ui.stonecutter.select_recipe block @a ~ ~ ~ 3 

execute if score @s timer matches 42 run setblock 32 82 1014 redstone_lamp[lit=false]
execute at @s if score @s timer matches 42 run playsound minecraft:ui.stonecutter.select_recipe block @a ~ ~ ~ 3 

execute if score @s timer matches 44 run setblock 32 82 1014 redstone_lamp[lit=true]
execute at @s if score @s timer matches 44 run playsound minecraft:ui.stonecutter.select_recipe block @a ~ ~ ~ 3 

execute if score @s timer matches 47 run setblock 32 82 1014 redstone_lamp[lit=false]
execute at @s if score @s timer matches 47 run playsound minecraft:ui.stonecutter.select_recipe block @a ~ ~ ~ 3 

execute if score @s timer matches 53 run setblock 32 82 1014 redstone_lamp[lit=true]
execute at @s if score @s timer matches 53 run playsound minecraft:ui.stonecutter.select_recipe block @a ~ ~ ~ 3 

execute if score @s timer matches 60 run setblock 32 82 1014 redstone_lamp[lit=false]
execute at @s if score @s timer matches 60 run playsound minecraft:ui.stonecutter.select_recipe block @a ~ ~ ~ 3 

execute if score @s timer matches 70 run setblock 32 82 1014 redstone_lamp[lit=true]
execute at @s if score @s timer matches 70 run playsound minecraft:ui.stonecutter.select_recipe block @a ~ ~ ~ 3 


execute if entity @a[limit=1,tag=bp3_finished,tag=bp4_finished,tag=bp5_finished] at @s if score @s timer matches 70.. run function mechanics:spells/twister/puzzle/cutscene345
