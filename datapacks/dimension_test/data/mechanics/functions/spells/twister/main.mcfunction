execute positioned ~ ~-0.5 ~ as @e[distance=..0.75,type=armor_stand,tag=push_block,tag=!move,limit=1,sort=nearest] run function mechanics:spells/twister/interaction/push_block/determine_direction

execute if block ^ ^ ^0.5 #mechanics:twister run tp @s ^ ^ ^0.25
execute unless block ^ ^ ^0.5 #mechanics:twister run kill @s
scoreboard players add @s value 1
execute if score @s value matches 80 run kill @s
