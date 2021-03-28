tp @e[type=armor_stand,tag=push_block,scores={const=2}] ~ -200 ~

execute positioned 31 73 977 positioned ~-11 ~6 ~9 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 31 73 977 positioned ~-11 ~6 ~9 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 2
execute positioned 31 73 977 run setblock ~ ~-1 ~ crying_obsidian

playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 1 0


execute if entity @s[tag=debug] run clone 23 82 989 25 84 989 23 79 989