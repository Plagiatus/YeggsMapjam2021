tp @e[type=armor_stand,tag=push_block,scores={const=8}] ~ -200 ~

execute positioned 69 73 984 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 69 73 984 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 8

execute positioned 57 73 987 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 57 73 987 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 8

execute positioned 54 73 980 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 54 73 980 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 8

setblock 63 72 980 crying_obsidian
playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 1 0

execute if entity @s[tag=debug] run fill 62 76 1009 63 74 1010 air
execute if entity @s[tag=debug] run fill 62 73 1009 63 73 1010 cracked_stone_bricks