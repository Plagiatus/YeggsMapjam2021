
execute as @s[tag=!build_selection] run summon chest_minecart ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"Choose a building"}',Tags:["build_preview"],Invulnerable:1b}

execute as @s[tag=!build_selection] run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"white_stained_glass_pane",Count:1b,Slot:9b,tag:{CustomModelData:4,display:{Name:'{"bold":true,"italic":false,"text":"Too expensive","color":"dark_red"}',Lore:['{"italic":false,"text":"You need more resources"}','{"italic":false,"text":"10\\uF006 10\\uF007","color":"white"}']}}}
execute as @s[tag=!build_selection] run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"white_stained_glass_pane",Count:1b,Slot:11b,tag:{CustomModelData:3,display:{Name:'{"bold":true,"italic":false,"text":"Too expensive","color":"dark_red"}',Lore:['{"italic":false,"text":"You need more resources"}','{"italic":false,"text":"20\\uF006 10\\uF007","color":"white"}']}}}
execute as @s[tag=!build_selection] run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"white_stained_glass_pane",Count:1b,Slot:13b,tag:{CustomModelData:2,display:{Name:'{"bold":true,"italic":false,"text":"Too expensive","color":"dark_red"}',Lore:['{"italic":false,"text":"You need more resources"}','{"italic":false,"text":"25\\uF006 15\\uF007 10\\uF008","color":"white"}']}}}
execute as @s[tag=!build_selection] run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"white_stained_glass_pane",Count:1b,Slot:15b,tag:{CustomModelData:6,display:{Name:'{"bold":true,"italic":false,"text":"Too expensive","color":"dark_red"}',Lore:['{"italic":false,"text":"You need more resources"}','{"italic":false,"text":"25\\uF006 15\\uF007 10\\uF008","color":"white"}']}}}
execute as @s[tag=!build_selection] run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"white_stained_glass_pane",Count:1b,Slot:17b,tag:{CustomModelData:1,display:{Name:'{"bold":true,"italic":false,"text":"Too expensive","color":"dark_red"}',Lore:['{"italic":false,"text":"You need more resources"}','{"italic":false,"text":"500\\uF006 32\\uF008 16\\uF009 5\\uF010 1\\uF011","color":"white"}']}}}
execute as @s[tag=!build_selection] run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"sunflower",Count:1b,Slot:21b,tag:{display:{Name:'{"italic":false,"text":"Upgrade","color":"green"}'}}}
execute as @s[tag=!build_selection] run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"barrier",Count:1b,Slot:23b,tag:{display:{Name:'{"italic":false,"text":"Remove","color":"red"}'}}}


# check for initial costs
execute store result score @s upgrade_mana run scoreboard players get #current mana
execute store result score @s upgrade_wood run clear @s #minecraft:logs 0
execute store result score @s upgrade_iron run clear @s iron_ingot 0
execute store result score @s upgrade_gold run clear @s gold_ingot 0
execute store result score @s upgrade_lapis run clear @s lapis_lazuli 0
execute store result score @s upgrade_diamond run clear @s diamond 0

execute as @s[tag=!build_selection] unless score @s upgrade_mana matches ..9 unless score @s upgrade_wood matches ..9 run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"sea_pickle",Count:1b,Slot:9b,tag:{display:{Name:'{"bold":true,"italic":false,"text":"Connector","color":"light_purple"}',Lore:['{"italic":false,"text":"Used to connect your mana buildings"}','{"italic":false,"text":"10\\uF006 10\\uF007","color":"white"}']}}}
execute as @s[tag=!build_selection] unless score @s upgrade_mana matches ..19 unless score @s upgrade_wood matches ..9 run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_fire_coral_fan",Count:1b,Slot:11b,tag:{display:{Name:'{"bold":true,"italic":false,"text":"Storage","color":"light_purple"}',Lore:['{"italic":false,"text":"Stores mana"}','{"italic":false,"text":"20\\uF006 10\\uF007","color":"white"}']}}}
execute as @s[tag=!build_selection] unless score @s upgrade_mana matches ..24 unless score @s upgrade_wood matches ..14 unless score @s upgrade_iron matches ..9 run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_brain_coral_fan",Count:1b,Slot:13b,tag:{display:{Name:'{"bold":true,"italic":false,"text":"Generator","color":"light_purple"}',Lore:['{"italic":false,"text":"Generates mana"}','{"italic":false,"text":"25\\uF006 15\\uF007 10\\uF008","color":"white"}']}}}
execute as @s[tag=!build_selection] unless score @s upgrade_mana matches ..24 unless score @s upgrade_wood matches ..14 unless score @s upgrade_iron matches ..9 run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_horn_coral",Count:1b,Slot:15b,tag:{display:{Name:'{"bold":true,"italic":false,"text":"Extractor","color":"light_purple"}',Lore:['{"italic":false,"text":"Converts entities and items into mana"}','{"italic":false,"text":"25\\uF006 15\\uF007 10\\uF008","color":"white"}']}}}
execute as @s[tag=!build_selection] unless score @s upgrade_mana matches ..499 unless score @s upgrade_wood matches ..31 unless score @s upgrade_iron matches ..15 unless score @s upgrade_gold matches ..4 unless score @s upgrade_diamond matches ..0 run data modify entity @e[tag=build_preview,limit=1,sort=nearest] Items append value {id:"dead_horn_coral_fan",Count:1b,Slot:17b,tag:{display:{Name:'{"bold":true,"italic":false,"text":"Chunk Loader","color":"light_purple"}',Lore:['{"italic":false,"text":"Loads the chunk it is inside of."}','{"italic":false,"text":"500\\uF006 32\\uF008 16\\uF009 5\\uF010 1\\uF011","color":"white"}']}}}

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
execute store result score @s tmp run clear @s sunflower
execute if score @s tmp matches 1 run scoreboard players set @s build 100

execute store result score @s tmp run clear @s white_stained_glass_pane

execute if score @s tmp matches 1 run tp @e[tag=build_preview,type=chest_minecart,limit=1,sort=nearest] ~ -100 ~
execute if score @s tmp matches 1 run tag @s remove build_selection

execute if score @s build matches 1.. run tp @e[tag=build_preview,type=chest_minecart,limit=1,sort=nearest] ~ -100 ~