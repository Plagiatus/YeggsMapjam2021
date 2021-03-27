
execute as @s[tag=!build_selection] run summon chest_minecart ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"Choose a building"}',Tags:["build_preview"]}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"twisting_vines",Count:1b,Slot:10b}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_fire_coral_fan",Count:1b,Slot:12b}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_brain_coral_fan",Count:1b,Slot:14b}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_horn_coral",Count:1b,Slot:16b}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_horn_coral_fan",Count:1b,Slot:18b}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"barrier",Count:1b,Slot:26b}

tag @s add build_selection
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=build_preview,limit=1,sort=nearest] ~ ~-.5 ~

#TODO: use proper items
execute store result score @s tmp run clear @s twisting_vines
execute if score @s tmp matches 1 run scoreboard players set @s build 1
execute store result score @s tmp run clear @s dead_fire_coral_fan
execute if score @s tmp matches 1 run scoreboard players set @s build 2
execute store result score @s tmp run clear @s dead_brain_coral_fan
execute if score @s tmp matches 1 run scoreboard players set @s build 3
execute store result score @s tmp run clear @s dead_horn_coral
execute if score @s tmp matches 1 run scoreboard players set @s build 4
execute store result score @s tmp run clear @s dead_horn_coral_fan
execute if score @s tmp matches 1 run scoreboard players set @s build 5

execute store result score @s tmp run clear @s barrier
execute if score @s tmp matches 1 run scoreboard players set @s build 99

execute if score @s build matches 1.. run tp @e[tag=build_preview,type=chest_minecart,limit=1,sort=nearest] ~ -100 ~