tp @e[type=armor_stand,tag=push_block,scores={const=6}] ~ -200 ~

execute positioned 41 76 1015 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 41 76 1015 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 6

setblock 67 71 1007 crying_obsidian
playsound minecraft:entity.shulker.teleport master @a ~ ~2 ~ 1 0

execute if entity @s[tag=debug] run fill 44 76 1002 47 76 1011 air