tp @e[type=armor_stand,tag=push_block,scores={const=7}] ~ -200 ~

execute positioned 51 76 996 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 51 76 996 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 7

execute positioned 51 76 995 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 51 76 995 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 7

execute positioned 51 77 995 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 51 77 995 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 7

execute positioned 40 81 975 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 40 81 975 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 7

setblock 47 80 973 crying_obsidian
playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 1 0

execute if entity @s[tag=debug] run fill 64 76 1005 63 74 1004 air
execute if entity @s[tag=debug] run fill 64 73 1005 63 73 1004 cracked_stone_bricks
