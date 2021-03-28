tp @e[type=armor_stand,tag=push_block,scores={const=5}] ~ -200 ~

execute positioned 18 81 1034 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 18 81 1034 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 5

execute positioned 19 81 1033 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 19 81 1033 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 5

execute positioned 19 81 1032 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 19 81 1032 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 5

execute positioned 18 81 1031 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 18 81 1031 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 5

execute positioned 19 81 1031 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 19 81 1031 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 5

execute positioned 19 82 1031 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 19 82 1031 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 5

setblock -1 80 1030 crying_obsidian
playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 1 0


execute if entity @s[tag=debug] run setblock 32 82 1016 redstone_lamp[lit=false]
execute if entity @s[tag=debug] run clone 35 80 1011 35 83 1017 35 77 1011 masked force