tp @e[type=armor_stand,tag=push_block,scores={const=1},distance=0.1..] ~ ~-200 ~
execute unless entity @a[tag=bp1_finished] positioned 1.71 74.41 997.81 run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["puzzle_cam"],Rotation:[157.3f,18.8f]}
execute unless entity @a[tag=bp1_finished] positioned 1.71 74.41 997.81 run scoreboard players set @e[type=area_effect_cloud,limit=1,tag=puzzle_cam] const 1

tag @a add bp1_finished