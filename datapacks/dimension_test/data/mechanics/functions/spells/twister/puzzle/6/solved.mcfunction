
tp @e[type=armor_stand,tag=push_block,scores={const=6},distance=0.1..] ~ ~-200 ~
execute unless entity @a[tag=bp6_finished] positioned 37.593 80.608 1016.784 run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["puzzle_cam"],Rotation:[-137.6f,26.1f]}
execute unless entity @a[tag=bp6_finished] positioned 37.593 80.608 1016.784 run scoreboard players set @e[type=area_effect_cloud,limit=1,tag=puzzle_cam] const 6

tag @a add bp6_finished