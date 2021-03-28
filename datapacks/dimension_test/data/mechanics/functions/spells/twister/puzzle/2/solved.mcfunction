tag @a add bp2_finished

tp @e[type=armor_stand,tag=push_block,scores={const=2},distance=0.1..] ~ ~-200 ~
execute positioned 19.139 81.2 980.374 run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["puzzle_cam"],Rotation:[-31.8f,12.9f]}
execute positioned 19.139 81.2 980.374 run scoreboard players set @e[type=area_effect_cloud,limit=1,tag=puzzle_cam] const 2
