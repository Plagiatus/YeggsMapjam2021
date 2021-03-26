execute at @s[tag=move] run function mechanics:spells/twister/interaction/push_block/move_foward
execute at @s[tag=!move] if block ~ ~-1 ~ light_gray_shulker_box[facing=down] run tag @s add move_up
execute at @s[tag=!move] if block ~ ~1 ~ light_gray_shulker_box[facing=up] run tag @s add move_down
execute at @s[tag=move_up] run function mechanics:spells/twister/interaction/push_block/move_up
execute at @s[tag=move_down] run function mechanics:spells/twister/interaction/push_block/move_down
