
execute as @s[tag=!build_selection] run summon chest_minecart ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"Choose a building"}',Tags:["build_preview"],Invulnerable:1b}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"sea_pickle",Count:1b,Slot:9b,tag:{display:{Name:'{"italic":false,"text":"Connector","color":"light_purple"}'}}}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_fire_coral_fan",Count:1b,Slot:11b,tag:{display:{Name:'{"italic":false,"text":"Storage","color":"light_purple"}'}}}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_brain_coral_fan",Count:1b,Slot:13b,tag:{display:{Name:'{"italic":false,"text":"Generator","color":"light_purple"}'}}}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_horn_coral",Count:1b,Slot:15b,tag:{display:{Name:'{"italic":false,"text":"Extractor","color":"light_purple"}'}}}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_horn_coral_fan",Count:1b,Slot:17b,tag:{display:{Name:'{"italic":false,"text":"Chunk Loader","color":"light_purple"}'}}}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"sunflower",Count:1b,Slot:21b,tag:{display:{Name:'{"italic":false,"text":"Upgrade","color":"green"}'}}}
data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"barrier",Count:1b,Slot:23b,tag:{display:{Name:'{"italic":false,"text":"Remove","color":"red"}'}}}

tag @s add build_selection
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=build_preview,limit=1,sort=nearest] ~ ~-.5 ~

#TODO: use proper items
execute store result score @s tmp run clear @s sea_pickle
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