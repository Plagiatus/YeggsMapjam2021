execute at @s[tag=move] run function mechanics:spells/twister/interaction/push_block/move_foward
execute at @s[tag=!move] if block ~ ~-1 ~ shulker_box[facing=down] run function mechanics:spells/twister/interaction/push_block/move_up
