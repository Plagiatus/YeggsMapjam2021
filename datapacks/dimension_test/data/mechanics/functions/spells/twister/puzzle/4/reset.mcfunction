tp @e[type=armor_stand,tag=push_block,scores={const=4}] ~ -200 ~

execute positioned 17 82 1015 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 17 82 1015 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 4

execute positioned 15 82 1015 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 15 82 1015 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 4

execute positioned 15 83 1015 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 15 83 1015 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 4

execute positioned 11 82 1013 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 11 82 1013 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 4

setblock 20 72 1016 crying_obsidian
playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 1 0


execute if entity @s[tag=debug] run setblock 32 82 1014 redstone_lamp[lit=false]
execute if entity @s[tag=debug] run clone 35 80 1011 35 83 1017 35 77 1011 masked force
