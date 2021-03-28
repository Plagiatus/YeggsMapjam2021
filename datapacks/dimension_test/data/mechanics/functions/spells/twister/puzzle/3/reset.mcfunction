tp @e[type=armor_stand,tag=push_block,scores={const=3}] ~ -200 ~

execute positioned 20 76 992 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 20 76 992 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 3

execute positioned 19 76 991 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 19 76 991 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 3

setblock 18 72 1010 crying_obsidian
playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 1 0


execute if entity @s[tag=debug] run setblock 32 82 1012 redstone_lamp[lit=false]
execute if entity @s[tag=debug] run clone 35 80 1011 35 83 1017 35 77 1011 masked force
