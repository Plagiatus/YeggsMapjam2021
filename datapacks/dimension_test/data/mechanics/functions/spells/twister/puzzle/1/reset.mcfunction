tp @e[type=armor_stand,tag=push_block,scores={const=1}] ~ -200 ~

execute positioned -12 69 994 positioned ~-1 ~2 ~5 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned -12 69 994 positioned ~-1 ~2 ~5 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 1
execute positioned -12 69 994 positioned ~-6 ~ ~ run function mechanics:spells/twister/interaction/push_block/summon
execute positioned -12 69 994 positioned ~-6 ~ ~ run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 1
execute positioned -12 69 994 run setblock ~ ~-1 ~ crying_obsidian

