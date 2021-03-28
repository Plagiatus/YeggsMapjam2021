tag @a add bp4_finished

tp @e[type=armor_stand,tag=push_block,scores={const=4},distance=0.1..] ~ ~-200 ~
execute positioned 23.308 80.894 1021.314 run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["puzzle_cam"],Rotation:[-131.3f,13.6f]}
execute positioned 23.308 80.894 1021.314 run scoreboard players set @e[type=area_effect_cloud,limit=1,tag=puzzle_cam] const 4
