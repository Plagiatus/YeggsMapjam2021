#Move forward
execute at @s[tag=move] run function mechanics:spells/twister/interaction/push_block/move_foward

#Move Up/Down
execute at @s[tag=!move] if block ~ ~-1 ~ light_gray_shulker_box[facing=down] run tag @s add move_up
execute at @s[tag=!move] if block ~ ~1 ~ light_gray_shulker_box[facing=up] run tag @s add move_down
execute at @s[tag=move_up] run function mechanics:spells/twister/interaction/push_block/move_up
execute at @s[tag=move_down] run function mechanics:spells/twister/interaction/push_block/move_down

#Fall
tag @s[tag=!move,tag=!move_up,tag=!move_down] add tmp
execute at @s[tag=tmp] run tag @e[type=shulker,sort=nearest,limit=1,dx=0] add tmp

#down
execute at @s[tag=tmp,tag=!on_ceiling] positioned ~-0.5 ~-0.01 ~-0.5 if block ~ ~ ~ air if block ~0.99 ~ ~0.99 air unless entity @e[type=shulker,dx=0,tag=!tmp] at @s run tag @s add move
#up
execute at @s[tag=tmp,tag=on_ceiling] positioned ~ ~1 ~ if block ~-0.49 ~-1 ~-0.49 air if block ~0.49 ~ ~0.49 air unless entity @e[type=shulker,distance=..0.1,tag=!tmp] at @s run tag @s add move

execute at @s[tag=tmp] run tag @e[type=shulker,sort=nearest,limit=1,dx=0] remove tmp
tag @s remove tmp
