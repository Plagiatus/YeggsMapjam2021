
tp @e[type=armor_stand,tag=push_block,scores={const=7},distance=0.1..] ~ ~-200 ~
execute unless entity @a[tag=bp7_finished] positioned 55.491 79.647 1012.523 run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["puzzle_cam"],Rotation:[-130.3f,24.1f]}
execute unless entity @a[tag=bp7_finished] positioned 55.491 79.647 1012.523 run scoreboard players set @e[type=area_effect_cloud,limit=1,tag=puzzle_cam] const 7

tag @a add bp7_finished