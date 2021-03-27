tag @e[type=shulker,dx=0] add tmp
execute unless block ~ ~-0.1 ~ air run tag @s remove move_down
execute positioned ~-0.5 ~-1.1 ~-0.5 if entity @e[type=shulker,tag=!tmp,limit=1,dx=0] run tag @s remove move_down
tp @s[tag=move_down] ~ ~-0.1 ~
tag @e[type=shulker,distance=..2] remove tmp
execute as @s[tag=!move_down] at @s run function mechanics:spells/twister/interaction/push_block/center

execute if entity @s[tag=on_ceiling] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1.5
tag @s remove on_ceiling