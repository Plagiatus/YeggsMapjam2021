execute as @e[distance=..0.6,type=armor_stand,tag=push_block,tag=!move] run function mechanics:spells/twister/interaction/push_block/determine_direction
particle flame
execute if block ^ ^ ^0.5 air run tp @s ^ ^ ^0.1
execute unless block ^ ^ ^0.5 air run kill @s