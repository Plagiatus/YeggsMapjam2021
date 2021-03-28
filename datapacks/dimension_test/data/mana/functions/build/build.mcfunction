# not very multiplayer friendly

execute if score @s build matches 2.. at @e[tag=preview,limit=1,sort=nearest] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"Plagiatus",rotation:"NONE",posX:-1,mode:"LOAD",posY:0,sizeX:3,posZ:-1,integrity:1.0f,showair:0b,name:"mana:stair_ring",sizeY:1,sizeZ:3,showboundingbox:1b}
execute if score @s build matches 2.. at @e[tag=preview,limit=1,sort=nearest] run setblock ~1 ~-1 ~ redstone_block


# TODO use actual blocks & create entities
execute if score @s build matches 1 at @e[tag=preview,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~2 ~ barrier
execute if score @s build matches 1 at @e[tag=preview,limit=1,sort=nearest] run setblock ~ ~1 ~ sea_pickle[pickles=1,waterlogged=false]
execute if score @s build matches 2 at @e[tag=preview,limit=1,sort=nearest] run setblock ~ ~ ~ dead_fire_coral_fan[waterlogged=false]
execute if score @s build matches 3 at @e[tag=preview,limit=1,sort=nearest] run setblock ~ ~ ~ dead_brain_coral_fan[waterlogged=false]
execute if score @s build matches 4 at @e[tag=preview,limit=1,sort=nearest] run setblock ~ ~-1 ~ dead_horn_coral[waterlogged=false]
execute if score @s build matches 5 at @e[tag=preview,limit=1,sort=nearest] run setblock ~ ~ ~ dead_horn_coral_fan[waterlogged=false]

execute if score @s build matches 1 at @e[tag=preview,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["machine","new","connector"],Duration:2000000000}
execute if score @s build matches 2 at @e[tag=preview,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["machine","new","mana_storage"],Duration:2000000000}
execute if score @s build matches 2 at @e[tag=preview,limit=1,sort=nearest] run summon armor_stand ~ ~-1 ~ {Tags:["mana_storage_display"],Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"white_stained_glass_pane",tag:{CustomModelData:5},Count:1b}]}
execute if score @s build matches 3 at @e[tag=preview,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["machine","new","mana_generator"],Duration:2000000000}
execute if score @s build matches 4 at @e[tag=preview,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["machine","new","extractor"],Duration:2000000000}
execute if score @s build matches 5 at @e[tag=preview,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["machine","new","chunk_loader"],Duration:2000000000}

execute if score @s build matches 2.. at @e[tag=preview,limit=1,sort=nearest] run summon area_effect_cloud ~ ~1.5 ~ {Tags:["machine_display"],Duration:2000000000,CustomNameVisible:1b,CustomName:'" "'}

scoreboard players set @e[tag=new] lvl 0
execute as @e[tag=new] run function mana:values
execute if score @s build matches 2.. as @e[tag=machine,tag=new,limit=1,sort=nearest] at @s run function mana:display/info
tag @e[tag=new] remove new


# cost
execute if score @s build matches 1 run scoreboard players set #upgrade upgrade_mana 10
execute if score @s build matches 1 run scoreboard players set #upgrade upgrade_wood 10
execute if score @s build matches 1 run scoreboard players set #upgrade upgrade_iron 0
execute if score @s build matches 1 run scoreboard players set #upgrade upgrade_gold 0
execute if score @s build matches 1 run scoreboard players set #upgrade upgrade_lapis 0
execute if score @s build matches 1 run scoreboard players set #upgrade upgrade_diamond 0

execute if score @s build matches 2 run scoreboard players set #upgrade upgrade_mana 20
execute if score @s build matches 2 run scoreboard players set #upgrade upgrade_wood 10
execute if score @s build matches 2 run scoreboard players set #upgrade upgrade_iron 0
execute if score @s build matches 2 run scoreboard players set #upgrade upgrade_gold 0
execute if score @s build matches 2 run scoreboard players set #upgrade upgrade_lapis 0
execute if score @s build matches 2 run scoreboard players set #upgrade upgrade_diamond 0

execute if score @s build matches 3 run scoreboard players set #upgrade upgrade_mana 25
execute if score @s build matches 3 run scoreboard players set #upgrade upgrade_wood 15
execute if score @s build matches 3 run scoreboard players set #upgrade upgrade_iron 10
execute if score @s build matches 3 run scoreboard players set #upgrade upgrade_gold 0
execute if score @s build matches 3 run scoreboard players set #upgrade upgrade_lapis 0
execute if score @s build matches 3 run scoreboard players set #upgrade upgrade_diamond 0

execute if score @s build matches 4 run scoreboard players set #upgrade upgrade_mana 25
execute if score @s build matches 4 run scoreboard players set #upgrade upgrade_wood 15
execute if score @s build matches 4 run scoreboard players set #upgrade upgrade_iron 10
execute if score @s build matches 4 run scoreboard players set #upgrade upgrade_gold 0
execute if score @s build matches 4 run scoreboard players set #upgrade upgrade_lapis 0
execute if score @s build matches 4 run scoreboard players set #upgrade upgrade_diamond 0

execute if score @s build matches 5 run scoreboard players set #upgrade upgrade_mana 500
execute if score @s build matches 5 run scoreboard players set #upgrade upgrade_wood 0
execute if score @s build matches 5 run scoreboard players set #upgrade upgrade_iron 32
execute if score @s build matches 5 run scoreboard players set #upgrade upgrade_gold 16
execute if score @s build matches 5 run scoreboard players set #upgrade upgrade_lapis 5
execute if score @s build matches 5 run scoreboard players set #upgrade upgrade_diamond 1

function mana:build/upgrade/clear_all

scoreboard players operation #current mana -= #upgrade upgrade_mana


# cleanup 
kill @e[tag=preview,limit=1,sort=nearest]
scoreboard players set @s build 0
scoreboard players set @s cc 0
tag @s remove build_selection