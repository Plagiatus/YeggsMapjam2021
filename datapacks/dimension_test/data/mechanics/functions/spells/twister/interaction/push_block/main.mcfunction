execute as @e[type=armor_stand,tag=push_block,tag=move] at @s run function mechanics:spells/twister/interaction/push_block/move_foward
execute as @e[type=armor_stand,tag=push_block,tag=!move] at @s if block ~ ~-1 ~ shulker_box[facing=down] run function mechanics:spells/twister/interaction/push_block/move_up
