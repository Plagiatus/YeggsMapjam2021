
execute as @s[tag=!build_selection] run summon chest_minecart ~ ~ ~ {Items:[{id:"stone",Count:1b,Slot:10b},{id:"andesite",Count:1b,Slot:11b}],NoGravity:1b,CustomName:'{"text":"Choose a building"}',Tags:["build_preview"]}
tag @s add build_selection
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=build_preview,limit=1,sort=nearest] ~ ~-.5 ~

#TODO: use proper items
execute store result score @s tmp run clear @s stone
execute if score @s tmp matches 1 run scoreboard players set @s build 1
execute store result score @s tmp run clear @s andesite
execute if score @s tmp matches 1 run scoreboard players set @s build 2

execute if score @s build matches 1.. run tp @e[tag=build_preview,type=chest_minecart,limit=1,sort=nearest] ~ -100 ~