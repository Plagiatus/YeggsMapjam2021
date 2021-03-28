tag @a add bp6_finished

tp @e[type=armor_stand,tag=push_block,scores={const=6},distance=0.1..] ~ ~-200 ~
execute positioned 37.593 80.608 1016.784 run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["puzzle_cam"],Rotation:[-137.6f,26.1f]}
execute positioned 37.593 80.608 1016.784 run scoreboard players set @e[type=area_effect_cloud,limit=1,tag=puzzle_cam] const 6

setblock 33 82 1012 redstone_block