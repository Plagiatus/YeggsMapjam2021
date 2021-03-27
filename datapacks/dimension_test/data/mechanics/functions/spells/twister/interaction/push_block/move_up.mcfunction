tag @e[type=shulker,dx=0,limit=1,sort=nearest] add tmp
execute unless block ~ ~1.0 ~ air run tag @s remove move_up
execute positioned ~-0.5 ~1 ~-0.5 if entity @e[type=shulker,tag=!tmp,limit=1,dx=0] run tag @s remove move_up
tp @s[tag=move_up] ~ ~0.1 ~
execute at @s run tag @e[type=shulker,dx=0] remove tmp
execute as @s[tag=!move_up] at @s run function mechanics:spells/twister/interaction/push_block/center

execute if entity @s[tag=!on_ceiling] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.5
tag @s add on_ceiling