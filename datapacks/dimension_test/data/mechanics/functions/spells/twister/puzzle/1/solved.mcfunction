tag @a add bp1_finished

tp @e[type=armor_stand,tag=push_block,scores={const=1},distance=0.1..] ~ ~-200 ~
execute positioned 1.71 74.41 997.81 run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["puzzle_cam"],Rotation:[157.3f,18.8f]}
execute positioned 1.71 74.41 997.81 run scoreboard players set @e[type=area_effect_cloud,limit=1,tag=puzzle_cam] const 1
fill ~9 ~2 ~-14 ~11 ~8 ~-14 air