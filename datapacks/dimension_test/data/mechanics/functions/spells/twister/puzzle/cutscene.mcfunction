scoreboard players add @s timer 1

execute if entity @s[scores={timer=2}] at @a[x=0] run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["puzzle_cam_reset"]}
execute if entity @s[scores={timer=2}] at @a[x=0] run tp @e[type=area_effect_cloud,tag=puzzle_cam_reset] ~ ~0.5 ~ ~ ~

execute if entity @s[scores={const=1,timer=30..118}] in dim:blue positioned 2 74 999 run function mechanics:spells/twister/puzzle/1/cutscene

execute if entity @s[scores={const=2,timer=30..118}] in dim:blue positioned 23 78 989 run function mechanics:spells/twister/puzzle/2/cutscene

execute if entity @s[scores={const=3,timer=30..118}] in dim:blue positioned 23 80 1021 run function mechanics:spells/twister/puzzle/3/cutscene
execute if entity @s[scores={const=4,timer=30..118}] in dim:blue positioned 23 80 1021 run function mechanics:spells/twister/puzzle/4/cutscene
execute if entity @s[scores={const=5,timer=30..118}] in dim:blue positioned 23 80 1021 run function mechanics:spells/twister/puzzle/5/cutscene

execute if entity @s[scores={const=6,timer=30..118}] in dim:blue positioned 37 80 1016 run function mechanics:spells/twister/puzzle/6/cutscene

execute if entity @s[scores={const=7,timer=30..118}] in dim:blue positioned 55 79 1012 run function mechanics:spells/twister/puzzle/7/cutscene
execute if entity @s[scores={const=8,timer=30..118}] in dim:blue positioned 55 79 1012 run function mechanics:spells/twister/puzzle/8/cutscene

execute if entity @s[scores={const=9,timer=30..118}] in dim:blue positioned 70 84 1028 run function mechanics:spells/twister/puzzle/9/cutscene

execute if entity @s[scores={const=10,timer=30..118}] in minecraft:overworld positioned 1934 99 2017 run function mechanics:spells/twister/puzzle/lobby/cutscene

execute if entity @s[scores={timer=118}] as @a[x=0] run tp @s @e[type=area_effect_cloud,tag=puzzle_cam_reset,limit=1,sort=nearest]
execute if entity @s[scores={timer=118}] run gamemode adventure @a[x=0]
