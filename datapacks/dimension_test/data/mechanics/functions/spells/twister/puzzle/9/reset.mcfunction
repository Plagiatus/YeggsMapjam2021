tp @e[type=armor_stand,tag=push_block,scores={const=9}] ~ -200 ~

execute positioned 78 78 998 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 78 78 998 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9

execute positioned 79 78 1000 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 79 78 1000 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9

execute positioned 75 78 1000 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 75 78 1000 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9


execute positioned 66 77 1032 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 66 77 1032 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9


execute positioned 57 82 1036 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 57 82 1036 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9


execute positioned 66 76 1019 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 66 76 1019 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9

execute positioned 65 76 1019 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 65 76 1019 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9

execute positioned 65 77 1019 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 65 77 1019 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9

execute positioned 65 78 1019 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 65 78 1019 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9


execute positioned 49 81 1014 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 49 81 1014 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9

execute positioned 52 81 1015 run function mechanics:spells/twister/interaction/push_block/summon
execute positioned 52 81 1015 run scoreboard players set @e[type=armor_stand,tag=push_block,limit=1,sort=nearest,distance=..0.1] const 9

setblock 69 80 1035 crying_obsidian
playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 1 0

execute if entity @s[tag=debug] run fill 65 82 1037 64 83 1036 air
