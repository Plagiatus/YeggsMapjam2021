#detect pushable block
execute positioned ~ ~-0.25 ~ as @e[distance=..0.75,type=armor_stand,tag=push_block,tag=!move,limit=1,sort=nearest] run function mechanics:spells/twister/interaction/push_block/determine_direction

#move block unless wall
execute if block ^ ^ ^0.5 #mechanics:twister run tp @s ^ ^ ^0.25
execute unless block ^ ^ ^0.5 #mechanics:twister run kill @s

#Kill twister after 20 blocks
scoreboard players add @s value 1
execute if score @s value matches 80 run kill @s

