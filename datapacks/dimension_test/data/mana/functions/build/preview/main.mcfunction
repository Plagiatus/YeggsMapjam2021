scoreboard players set @s tmp 80

execute if score @s build matches ..98 anchored eyes positioned ^ ^ ^ run function mana:build/preview/raycast
execute if score @s build matches 99 anchored eyes positioned ^ ^ ^ run function mana:build/preview/raycast_deconstruct

# tellraw @a [{"score":{"name": "@s","objective": "build"}}]