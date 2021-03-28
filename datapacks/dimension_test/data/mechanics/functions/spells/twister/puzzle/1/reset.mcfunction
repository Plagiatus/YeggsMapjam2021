tp @e[type=armor_stand,tag=push_block,scores={const=1}] ~ -200 ~

execute positioned -12 69 994 positioned ~-1 ~2 ~5 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned -12 69 994 positioned ~-6 ~ ~ run function mechanics:spells/twister/interaction/push_block/summon
execute positioned -12 69 994 run setblock ~ ~-1 ~ crying_obsidian

