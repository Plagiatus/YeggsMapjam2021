tag @a add bp9_finished

tp @e[type=armor_stand,tag=push_block,scores={const=9},distance=0.1..] ~ ~-200 ~
execute positioned 70.737 84.533 1028.703 run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["puzzle_cam"],Rotation:[39.2f,22.5f]}
execute positioned 70.737 84.533 1028.703 run scoreboard players set @e[type=area_effect_cloud,limit=1,tag=puzzle_cam] const 9

setblock 33 82 1012 redstone_block